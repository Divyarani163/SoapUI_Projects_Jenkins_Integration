set current_dir=%cd%
set xml=%1
set var=%2
echo %var%
echo %xml%
echo %current_dir%
set current_date_time="`date +%Y%m%d%H%M%S`";
echo $current_date_time;
%current_dir%\bin\testrunner.bat -f%current_dir%\bin\API_Automation_Reports -FPDF -R"Project Report $current_date_time" "-E%var%" -I "%current_dir%\bin\API_AutomationProjects_ReadyAPI\%xml%"


