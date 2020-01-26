*** Settings ***
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Library  os

*** Variables ***
${baseurl}=  https://reqres.in
${maahbody}=  { "email": "eve.holt@reqres.in", "password": "cityslicka" }

*** Test Cases ***
post request demo2
    create session  reqres  ${baseurl}
    #${maahbody}=  create dictionary  email=eve.holt@reqres.in  password=cityslicka
    ${headers}=   Create Dictionary   Content-Type=application/json
    ${response}=  post request  reqres  /api/login  data=${maahbody}  headers=${headers}
    #log to console  ${response.content}
    #log to console  ${response.status_code}
    ${statusCode}=  convert to string  ${response.status_code}
    should be equal  ${statusCode}  200
    ${dict}=  set variable  ${response.json()}
    #dictionary should contain key  ${dict}  token
    ${res}=  get dictionary values  ${dict}  token
    log to console  "extracted token "+${res}




