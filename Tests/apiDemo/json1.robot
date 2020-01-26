*** Settings ***
Documentation    Suite description
Library  Collections
Library  JSONLibrary
Library  os
Library  RequestsLibrary

*** Test Cases ***
json reading
    ${jsonob}=  Load JSON From File   ${CURDIR}/../JSONFiles/testj.json
    ${val}=  Get Value From Json  ${jsonob}  $.nextPageToken
    log to console  ${val[0]}
    should be equal  ${val[0]}  CAUQAA
