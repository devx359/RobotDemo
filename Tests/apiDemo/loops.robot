*** Variables ***
${ll2}  [22, 33, 45, 67, 88]

*** Test Cases ***
TC1
    ${ll}=  create list  22 33 44 67
    :FOR    ${x}   IN  ${ll}
    \  log to console  ${x}
    \  log to console   Hi

Exit Example
    #log to console  ${ll2}
    ${text} =    Set Variable    ${EMPTY}
    FOR    ${var}    IN    one    two
        log to console  ${var}
        Run Keyword If    '${var}' == 'two'    Exit For Loop
        ${text} =    Set Variable    ${text}${var}
    END
    Should Be Equal    ${text}    one

Exit Example 2

    FOR    ${var}  IN   23  45  67  89
        log to console  ${var}
        EXIT FOR LOOP IF  ${var}==67
    END


