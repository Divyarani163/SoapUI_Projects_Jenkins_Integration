@echo off

set READY_API_HOME=%~dp0
set OLDDIR=%CD%
cd /d %READY_API_HOME%

if exist "%READY_API_HOME%..\jre\bin" goto SET_BUNDLED_JAVA
if exist "%JAVA_HOME%" goto SET_JAVA_HOME_JAVA
java -version 2> NUL
if not %ERRORLEVEL%==9009 goto SET_SYSTEM_JAVA
echo Java not found. Install it and set JAVA_HOME to the directory of your local Java installation to proceed.
goto END

:SET_BUNDLED_JAVA
set JAVA=%READY_API_HOME%..\jre\bin\java
goto END_SETTING_JAVA

:SET_JAVA_HOME_JAVA
set JAVA=%JAVA_HOME%\bin\java
goto END_SETTING_JAVA

:SET_SYSTEM_JAVA
echo JAVA_HOME is not set, unexpected results may occur.
echo Set JAVA_HOME to the directory of your local Java installation to avoid this message.
set JAVA=java
goto END_SETTING_JAVA

:END_SETTING_JAVA

set CLASSPATH=%READY_API_HOME%ready-api-ui-2.2.0.jar;%READY_API_HOME%..\lib\*;%READY_API_HOME%..\.install4j\*
"%JAVA%" -cp "%CLASSPATH%" com.eviware.soapui.tools.JfxrtLocator > %TEMP%\jfxrtpath
set /P JFXRTPATH= < %TEMP%\jfxrtpath
del %TEMP%\jfxrtpath

"%JAVA%" -cp "%CLASSPATH%" com.eviware.soapui.tools.XmxCalculator > %TEMP%\readyxmx
set /P READY_XMX= < %TEMP%\readyxmx
del %TEMP%\readyxmx

rem uncomment to override memory limit
rem set READY_XMX=4000m

set CLASSPATH=%JFXRTPATH%%CLASSPATH%

rem JVM parameters, modify as appropriate
set JAVA_OPTS=-Xms128m -Xmx%READY_XMX% -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -Dsoapui.properties=soapui.properties -Dgroovy.source.encoding=iso-8859-1 "-Dsoapui.home=%READY_API_HOME%\" -splash:ready-api-splash.png -Dsun.net.http.allowRestrictedHeaders=true
if "%1" == "debug" (set JAVA_OPTS=%JAVA_OPTS% -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8005) else (set JAVA_OPTS=%JAVA_OPTS% -agentlib:jdwp=transport=dt_shmem,suspend=n,server=y)

if "%READY_API_HOME%" == "" goto START
    set JAVA_OPTS=%JAVA_OPTS% -Dsoapui.ext.libraries="%READY_API_HOME%ext"
    set JAVA_OPTS=%JAVA_OPTS% -Dsoapui.ext.listeners="%READY_API_HOME%listeners"
    set JAVA_OPTS=%JAVA_OPTS% -Dsoapui.ext.actions="%READY_API_HOME%actions"
    set JAVA_OPTS=%JAVA_OPTS% -Djava.library.path="%READY_API_HOME%\"
    set JAVA_OPTS=%JAVA_OPTS% -Dwsi.dir="%READY_API_HOME%..\wsi-test-tools"
rem uncomment to disable browser component
rem    set JAVA_OPTS=%JAVA_OPTS% -Dsoapui.browser.disabled="true"

:START

rem ********* run READY_API ***********
if "%1" == "debug" echo Starting ReadyAPI in debug mode
"%JAVA%" %JAVA_OPTS% -cp "%CLASSPATH%" com.smartbear.ready.ui.ReadyApiMain %*

:END
cd /d %OLDDIR%
