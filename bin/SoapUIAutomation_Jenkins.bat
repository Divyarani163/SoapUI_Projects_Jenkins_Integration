set current_dir=%cd%
set xml=%1
echo %xml%
echo %current_dir%
%current_dir%\bin\testrunner.bat -f%current_dir%\bin\API_Automation_Reports -FPDF -R"Project Report" "-EAuto" -I "%current_dir%\bin\API_AutomationProjects_ReadyAPI\%xml%"
