*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  os
Library  ../../External/var.py

Suite Setup  setup shit
Suite Teardown  destroyDriver

*** Variables ***
${browser}  Chrome
${url}  https://www.google.com/
${driverdir}  E:/PythonWorkspace/RobotPy/driver/chromedriver_79.exe

*** Test Cases ***
TC1
    log to console  a
    Go To    ${url}
    Input Text  name:q  good robot framework plugin
    #Click Element  id:ljhljjhl
    sleep  5s
TC2
    LOG TO CONSOLE  2nd test case my man

*** Keywords ***
setup shit
    Create Webdriver    Chrome    executable_path=${driverdir}
    Maximize Browser Window
    Set Screenshot Directory  E:/PythonWorkspace/RobotPy/Screenshots

Set ChromeDriver Path
    log to console  ${driverdir}
    Set Environment Variable  PATH  ${driverdir}

destroyDriver
    Close Browser