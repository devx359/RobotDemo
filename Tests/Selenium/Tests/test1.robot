*** Settings ***
Library  Collections
Library  RequestsLibrary

*** Test Cases ***
GET Request demo
    log to console  "hello world"
    Create Session	github	http://api.github.com
    ${resp}=	Get Request	github	/users/bulkan
    log to console  ${resp}
    Should Be Equal As Strings	${resp.status_code}	200
    Dictionary Should Contain Value	${resp.json()}	Bulkan Evcimen

*** Keywords ***
important stuff
    [Arguments]     ${name}
    log to console  hello  ${name}
    [Return]  ${name}
