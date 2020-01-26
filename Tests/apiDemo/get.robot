*** Settings ***
Library  JSONLibrary
Library  Collections
Variables  demo2.py
Library  RequestsLibrary
Documentation  Sends get request and
...  converts response to JSON and extracts value using xpath
...  and validates

*** Test Cases ***
TC1
    ${dct}=  create dictionary  page=2  per_page=2
    create session  chunku  https://reqres.in
    ${response}=  get request  chunku  /api/users  params=${dct}
    log to console  ${response.status_code}
    ${jsonResponse}=  to json  ${response.content}
    ${result1}=  Get Value From Json  ${jsonResponse}   $.data[1].email
    should contain  ${result1}  eve.holt@reqres.in



