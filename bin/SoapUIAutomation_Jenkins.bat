set current_dir=%cd%
set xml=%1
set var=%2
echo %var%
echo %xml%
echo %current_dir%
%current_dir%\bin\testrunner.bat -r -fC:\Users\drapolu\.jenkins\API_Automation_Reports -FPDF -R"Project Report" "-E%var%" -I "%current_dir%\bin\API_AutomationProjects_ReadyAPI\%xml%"


