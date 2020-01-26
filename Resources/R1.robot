*** Settings ***
Library  ../External/kaajer.py
Library  ../External/ExcelUtil.py

*** Keywords ***
printstuff
    [Arguments]  ${name}  ${pass}
    log to console  MyName is ${name} and password is ${pass}
    [Return]  buulshit

Hello
    log to console  yeah booy

pykey1
    bishaal

createshit
    [Arguments]  ${foldername}
    createFolder   ${foldername}

concatStrings
    [Arguments]  ${str1}  ${str2}
    ${result}=  concatenateStuff   ${str1}  ${str2}
    [Return]  ${result}

openExcel
    [Arguments]  ${filepath}
    load  ${filepath}
