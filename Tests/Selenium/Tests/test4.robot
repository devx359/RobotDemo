*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  Collections
Library  BuiltIn
#Test Teardown   shutdown
Suite Setup  initialSetup

*** Variables ***
@{ll}

*** Test Cases ***
TC1
    [Teardown]  shutdown
    log to console   hellorobot
    Open Browser  http://jira:3693/jira/login.jsp  Chrome
    Input Text  id:login-form-username  haldard
    Input Text  id:login-form-password  Jan20207$
    Click Button  id:login-form-submit

    Click Element  id:find_link
    Sleep  2s
    Click Element  partial link:Reported by me
    Sleep  10s
    ${elements}=  Get WebElements  //ol[@class="issue-list"]/li
    #${ll}=  create list  aaa
    FOR  ${ele}  IN  @{elements}
        #${text}=    Get Text    ${ele}
        #Log    ${text}
        Click Element   ${ele}
        Sleep  3s
        ${summary}=  Get Text  xpath://h1[@id="summary-val"]
        ${jiraID}=  Get Text  xpath://a[@class="issue-link"]
        ${status}=  Get Text  xpath://span[@id="status-val"]/span
        #Log   ${jiraID} ${status} ${summary}
        #Log To Console   ${jiraID} ${status} ${summary}
        ${dict}=  Create Dictionary  summary=${summary}  jiraid=${jiraID}  status=${status}
        Append To List  @{ll}  ${dict}
    END
    #Pint the saved list of dictionary
    FOR  ${item}  IN  @{ll}
    #Log To Console  Get From Dictionary  @{ll}[1]  summary
        Log To Console  ${item}
        ${conv}=  Convert To Dictionary  ${item}
        ${a}=  Get From Dictionary  ${conv}  summary
        Log To Console   outtt ${a}
    END
   # Capture Page Screenshot  scr.png

*** Keywords ***
shutdown
    Run Keyword If Test Failed  Capture Page Screenshot  EMBED
    Close Browser
initialSetup
    Set Screenshot Directory  ../Screenshot


