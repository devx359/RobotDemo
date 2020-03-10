*** Settings ***
Library  mod1  hey

*** Keywords ***
add two numbers
    [Arguments]  ${a}  ${b}
    ${var2}=  add  ${a}  ${b}
    [Return]  ${var2}

subtract two numbers
    [Arguments]  ${a}  ${b}
    ${var}=  subtract  ${a}  ${b}
    [Return]  ${var}