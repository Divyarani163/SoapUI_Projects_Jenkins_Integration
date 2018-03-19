set current_dir=%cd%
set Endpoint=%1
set TenantId=%2
set Token=%3
set Token_URL=%4
set Client_ID=%5
set Client_Secret=%6
set ServiceAccountAccessKey_SAAK=%7
set ServiceAccountSecretKey_SASK=%8
set URL_SCIM=%9
echo %Endpoint%
echo %TenantId%
echo %Token%
echo %Token_URL%
echo %Client_ID%
echo %Client_Secret%
echo %ServiceAccountAccessKey_SAAK%
echo %ServiceAccountSecretKey_SASK%
echo %URL_SCIM%
echo %current_dir%
shift
shift
shift
shift
shift
shift
shift
shift
shift
set Username_SCIM=%1
set Pwd_SCIM=%2
set Domain_SCIM=%3
echo %Username_SCIM%
echo %Pwd_SCIM%
echo %Domain_SCIM%
%current_dir%\bin\testrunner.bat -r -a -f%cd%\API_Automation_Reports -FPDF -R"Project Report" -PEndpoint=%1 -PTenantId=%2 -PToken=%3 -PToken_URL=%4 -PClient_ID=%5 -PClient_Secret=%6 -PServiceAccountAccessKey_SAAK=%7 -PServiceAccountSecretKey_SASK=%8 -PURL_SCIM=%9 -PUsername_SCIM=%1 -PPwd_SCIM=%2 -PDomain_SCIM=%3 -I "%current_dir%\bin\API_AutomationProjects_ReadyAPI\AutoStagePRD.xml"

pause


