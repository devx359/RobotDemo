*** Settings ***
Library  DataDriver  ../TestData/data.xlsx  sheet_name=Sheet1
Library  os
Test Template   readexcel1

*** Test Cases ***
Exceldemo1   using  ${username}  and  ${password}


*** Keywords ***
readexcel1
    [Arguments]  ${username}  ${password}
    log to console  Data fetched is ${username} ${password}