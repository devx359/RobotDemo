*** Settings ***
Library  DataDriver  ../TestData/data.xlsx  sheet_name=Sheet1
Library  os


*** Test Cases ***
Exceldemo1
    [Arguments]  ${username}  ${password}
    log to console  Data fetched is ${username} ${password}




