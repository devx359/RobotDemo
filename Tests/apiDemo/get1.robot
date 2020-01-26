*** Settings ***
Library  RequestsLibrary
Library   Collections

*** Test Cases ***
Post Request demo
    log to console  "Hey post"
    create session  github	http://api.github.com
    ${response}=    get request  github  /users/bulkan
    log to console  "Status Code"+${response.status_code}
    should be equal as strings   ${response.status_code}  200
    log to console  ${response.content}

