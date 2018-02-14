set current_dir=%cd%
set xml=%1
echo %xml%
echo %current_dir%
testrunner.bat -f%current_dir%\API_AutomationProjects_Jenkins\API_Automation_Reports -FPDF -R"Project Report" "-EAuto" -I "%current_dir%\API_AutomationProjects_Jenkins\API_AutomationProjects_ReadyAPI\%xml%"
