*** Settings ***
#Library  ../../../Utilities/excelUtil.py
Resource  ../../../Resources/commonKeys.robot

*** Test Cases ***
TC1
    openExcelFile  ../../../Data/test.xlsx  #opens the excel file
    #gets specific cell value

    ${val}=  getCellDataByCellNumber  Sheet1  A4
    Log To Console  ${val}

    #print all the valued from list of cell values
    @{val1}=  getCellDataByCellRange  Sheet1  A1:A5
    FOR  ${value}  IN  @{val1}
        Log To Console  ${value}
    END

    getCellDataByColoumnName  Sheet1  B

    closeExcelFile