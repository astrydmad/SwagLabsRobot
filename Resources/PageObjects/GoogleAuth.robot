*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${IDENTIFIER_ID}        identifierId
${NEXT_BUTTON}          identifierNext
${IDENTIFIER_PASSWORD}  Passwd
${PASSWORD_NEXT}        passwordNext


*** Keywords ***
Switch To Google Auth Tab
    Switch Window   NEW

Verify Form Loaded
    Wait Until Page Contains Element    ${IDENTIFIER_ID}

Enter Email And Proceed
    [Arguments]    ${Email}     ${Password}
    Enter Email   ${EMAIL}
    Verify "Identifier Next" Button Is Enabled
    Click "Next" Button
    sleep   2s
    Enter Password  ${PASSWORD}
    Verify "Password Next" Button Is Enabled

Enter Email
    [Arguments]    ${Email}
    Input Text      ${IDENTIFIER_ID}    ${EMAIL}

Verify "Identifier Next" Button Is Enabled
    Element Should Be Enabled   ${NEXT_BUTTON}

Click "Next" Button
    Click Element    ${NEXT_BUTTON}

Enter Password
    [Arguments]    ${Password}
    Input Text  ${IDENTIFIER_PASSWORD}  ${PASSWORD}

Verify "Password Next" Button Is Enabled
    Element Should Be Enabled   ${PASSWORD_NEXT}