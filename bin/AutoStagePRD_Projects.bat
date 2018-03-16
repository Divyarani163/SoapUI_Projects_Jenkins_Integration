set current_dir=%cd%
set var1=%1
set var2=%2
set var3=%3
set var4=%4
set var5=%5
set var6=%6
set var7=%7
set var8=%8
set var9=%9
echo %var1%
echo %var2%
echo %var3%
echo %var4%
echo %var5%
echo %var6%
echo %var7%
echo %var8%
echo %var9%
echo %current_dir%
shift
shift
shift
set var7=%7
set var8=%8
set var9=%9
echo %var7%
echo %var8%
echo %var9%
%current_dir%\bin\testrunner.bat -r -a -f%cd%\API_Automation_Reports -FPDF -R"Project Report" -PEndpoint=%1 -PTenantId=%2 -PToken=%3 -PToken_URL=%4 -PClient_ID=%5 -PClient_Secret=%6 -PServiceAccountAccessKey_SAAK=%7 -PServiceAccountSecretKey_SASK=%8 -PURL_SCIM=%9 -PUsername_SCIM=%7 -PPwd_SCIM=%8 -PDomain_SCIM=%9 -I 
"%current_dir%\bin\API_AutomationProjects_ReadyAPI\AutoStagePRD.xml"


