*** Settings ***
Library  ../../../Utilities/excelUtil.py

*** Test Cases ***
TC1
    openExcel  ../../../Data/test.xlsx  #opens the excel file
    #gets specific cell value
    ${val}=  getCellValueByCellNumber  Sheet1  A4
    Log To Console  ${val}
    #print all the valued from list of cell values
    @{val1}=  getCellsValueByCellRange  Sheet1  A1:A5
    FOR  ${value}  IN  @{val1}
        Log To Console  ${value}
    END

    closeExcel