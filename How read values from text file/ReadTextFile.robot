*** Settings ***
Library           OperatingSystem

*** Test Cases ***
Read Text File
    [Tags]    test text
    ${TextFileContent}=    Get File    ${CURDIR}/TextFile.txt
    Log    ${TextFileContent}
