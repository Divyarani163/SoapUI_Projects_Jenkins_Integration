set current_dir=%cd%
echo %current_dir%
testrunner.bat -f%current_dir%\API_Automation_Reports -FPDF -R"Project Report" "-EStage" -I "%current_dir%\API_AutomationProjects_ReadyAPI\Stage.xml"
