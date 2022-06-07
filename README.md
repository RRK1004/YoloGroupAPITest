# YoloGroupAPITest

Short info about implementaions :

Programming language : Selenium with Java 

API Test : *)I have used Maven project with** Karate framework** and test cases written in feature file

### API test
---------------------------------------------------
- See the sample REST API at: https://gorest.co.in/ and create a personal access token
- Create a new user, post, comment and todo. A test for success scenario and also for when some mandatory fields are missing.
- Test if you can create two users with the same email address.
- Test if the endpoints allow you to create new entries with invalid email address formats.
- Fetch the entries that you created, test that the returned data matches your input.

Steps to execute :

Download the YoloGroupAPITest repo into your local
Open Eclipse IDE and import the apiTest Maven project
update the request details for post request and GET request
Right click feature file and run as Cucumber 
Check the execution logs go to target/Karte-reports/karate-summary.html
