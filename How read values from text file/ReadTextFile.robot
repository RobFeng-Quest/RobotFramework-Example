*** Settings ***
Library           OperatingSystem

*** Test Cases ***
Read Text File
    [Tags]    test text
    ${TextFileContent}=    Get File    TestFile.txt
    Log    ${TextFileContent}