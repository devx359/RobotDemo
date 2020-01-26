*** Settings ***
Test Template  readexcel1

*** Test Cases ***
scenario1   abc  6695
scenario2   bhh  0860hlj
scenario3   vkjljl  uh7y9h8

*** Keywords ***
readexcel1
    [Arguments]  ${username}  ${password}
    log to console  Data fetched is ${username} ${password}