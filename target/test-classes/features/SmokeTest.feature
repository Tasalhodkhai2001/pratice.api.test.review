@Smoke
Feature: 

Scenario: generate token valid user name valid password
Given url "https://tek-insurance-api.azurewebsites.net"
And path "/api/token"
And request 
 """
      {
        "username": "supervisor",
        "password": "tek_supervisor"
      }
      """
      When method post
      And status 200
      Then print response
      
      Scenario: generate token invalid user name valid password
Given url "https://tek-insurance-api.azurewebsites.net"
And path "/api/token"
And request 
 """
      {
        "username": "invalid",
        "password": "tek_supervisor"
      }
      """
      When method post
      And status 404
      Then print response