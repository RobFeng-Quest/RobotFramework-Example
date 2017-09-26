*** Settings ***
Library           Collections
Library           RequestsLibrary

*** Test Cases ***
Get Requests
    [Documentation]    Get the response from API
    Create Session    github    http://api.github.com
    ${response}=    Get Request    github    /users/robfeng
    Log    ${response.status_code}
    Should Be Equal As Strings    ${response.status_code}    200
    Dictionary Should Contain Value    ${response.json()}    Rob Feng

Post Requests
    [Documentation]    POST to create a resource
    Create Session    test    http://jsonplaceholder.typicode.com
    ${headers}    Create Dictionary    Content-Type=application/json
    Set Test Variable    ${data}    { "userId": 1,"id": 1,"title": "test title","body": "test body " }
    ${response}    Post Request    test    /posts    ${data}    \    ${headers}
    Log    ${response.status_code}
    Should Be Equal As Strings    ${response.status_code}    201
    log    ${response.text}
