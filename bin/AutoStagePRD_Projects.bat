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
%current_dir%\bin\testrunner.bat -r -a -f%cd%\API_Automation_Reports -FPDF -R"Project Report" -PEndpoint=%Endpoint% -PTenantId=%TenantId% -PToken=%Token% -PToken_URL=%Token_URL% -PClient_ID=%Client_ID% -PClient_Secret=%Client_Secret% -PServiceAccountAccessKey_SAAK=%ServiceAccountAccessKey_SAAK% -PServiceAccountSecretKey_SASK=%ServiceAccountSecretKey_SASK% -PURL_SCIM=%URL_SCIM% -PUsername_SCIM=%Username_SCIM% -PPwd_SCIM=%Pwd_SCIM% -PDomain_SCIM=%Domain_SCIM% -I "%current_dir%\bin\API_AutomationProjects_ReadyAPI\AutoStagePRD.xml"



