*** Settings ***
Library  Collections
Resource  ../Resources/R1.robot

Documentation  ki sob baalchal testcases
*** Test Cases ***
arguments testing
    #[Setup]  hello
    #[Teardown]  printstuff  khanchacha  46123746
    #log to console  yes maaan
    #createshit  chorom1
    ${res}=  concatStrings  fuck  off
    log to console  ${res}


