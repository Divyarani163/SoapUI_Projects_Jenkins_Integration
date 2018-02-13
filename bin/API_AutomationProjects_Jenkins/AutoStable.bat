set current_dir=%cd%
echo %current_dir%
C:\Jenkins_WorkSpace\ReadyAPI-2.2.0\bin\testrunner.bat -f%current_dir%\API_Automation_Reports -FPDF -R"Project Report" "-EAuto" -I "%current_dir%\API_AutomationProjects_ReadyAPI\AutoStable.xml"
