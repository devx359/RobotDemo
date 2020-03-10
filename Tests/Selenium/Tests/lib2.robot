*** Settings ***
Resource  ../../../Resources/commonKeys.robot

*** Test Cases ***
TC01
    ${v}=  subtract two numbers  20  9
    Log To Console  result of sub ${v}
