*** Settings ***
Library  ../Library/mod1.py  hey
Library  ../Utilities/excelUtil.py

*** Keywords ***
add two numbers
    [Documentation]  somdsd
    ...   jahdasdad
    ...    somethinjs

    [Arguments]  ${a}  ${b}
    ${var2}=  add  ${a}  ${b}
    [Return]  ${var2}

subtract two numbers
    [Arguments]  ${a}  ${b}
    ${var}=  subtract  ${a}  ${b}
    [Return]  ${var}

openExcelFile
    [Arguments]  ${path}
    openExcel    ${path}

getCellDataByCellNumber
    [Arguments]  ${sheetname}  ${cellnumber}
    getCellValueByCellNumber     ${sheetname}  ${cellnumber}

getCellDataByCellRange
    [Arguments]  ${sheetname}  ${cellrange}
    getCellsValueByCellRange    ${sheetname}  ${cellrange}

getCellDataByColoumnName
    [Arguments]  ${sheetname}  ${coloumnName}
    readColoumn    ${sheetname}  ${coloumnName}

closeExcelFile
    closeExcel