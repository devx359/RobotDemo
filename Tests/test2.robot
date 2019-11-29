*** Settings ***
Library         Request
Library  Collections
Library  RequestsLibrary

*** Test Cases ***
POST Request demo
    log to console  "hello Post"
    Create Session	reqres	https://reqres.in/
    ${resp}=	post request  github	/users/bulkan
    log to console  ${resp}
    Should Be Equal As Strings	${resp.status_code}	200
    Dictionary Should Contain Value	${resp.json()}	Bulkan Evcimen