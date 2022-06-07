Feature: API test for YoloGroup

Background:
Given header Authorization = 'Bearer ' + 'ce5ec6bca9454e3d03f36910cb6f4a5f90b418e3740db722378c6c065328b840'
Given url 'https://gorest.co.in'

Scenario: Verify User is able to create user
Given  path  '/public/v2/users'
When request { "name": "Ranjith3", "email": "rkumar0408@gmail.com", "gender": "male" , "status": "active" }
When  method POST
Then  status 201
And print response

Scenario: Verify newly created user using email
* def query = {email:'rkumar0408@gmail.com'}
Given  path  '/public/v2/users'
And params query
When  method GET
Then  status 200
And print response
And def jsonResponse = response
And print jsonResponse



Scenario: Verify User is able to create post
Given  path  '/public/v2/posts'
When request { "user": "Ishatestuser", "user_id": "4155", "title": "Test Assessment " , "body": "Assingment for Yolo Group" }
When  method POST
Then  status 201
And print response

Scenario: Verify User is able to create Comments
#Given header Authorization = 'Bearer ' + 'ce5ec6bca9454e3d03f36910cb6f4a5f90b418e3740db722378c6c065328b840'
Given  path  '/public/v2/comments'
When request { "post_id": 2256, "body": "Updating comments", "email": "lavanya_ret_mehrotra@trantow.org" , "name": "Ranjith" , "status": "completed" }
When  method POST
Then  status 201
And print response


