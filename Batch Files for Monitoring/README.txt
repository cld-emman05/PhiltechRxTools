This directory consist of the following Batch (.bat) files to provide all the tools and websites needed for monitoring:

1) d365Monitoring.bat - This will open all the links for D365 monitoring, which is needed for submission every start of shift.
- Screenshots must be sent through an email.

2) hourlyMonitoringTools.bat - Consist of the Hourly Monitoring spreadsheet link, Sinch Analytics links (SMS/Conversation API), and Journeys monitoring.
- This batch file is still in experimental phase, it will require further development and manual customization.

3) prodAuthMonitoring.bat - a monitoring links from Grafana (RXIE), that provides updates on Auth and GQL activities for an interval of three hours. Screenshots must be sent to the Prod Auth GC in MS Teams.

4) rcpMonitoring.bat - a monitoring link for the Grafana and Kafka updates, which must be sent via email every three hours.

JavaTools
- A collection of JAR files that requires Java 11 before running