*** Settings ***
Library  mod1  HEY

*** Test Cases ***
TC1
    ${var}=  something
    Log To Console   ${var}
    ${var2}=  add  2  5
    Log To Console   sum is eual to ${var2}