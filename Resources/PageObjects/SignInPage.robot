*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${USERNAME_FIELD}                user-name
${PASSWORD_FIELD}                password
${LOGIN_BUTTON}                login-button

*** Keywords ***
Verify Start Page Loaded
    Wait Until Page Contains Element    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${USERNAME_FIELD}
    Wait Until Page Contains Element    ${PASSWORD_FIELD}

Enter Username
    [Arguments]    ${Username}
    Input Text  ${USERNAME_FIELD}  ${USERNAME}

Enter Password
    [Arguments]    ${Password}
    Input Text  ${PASSWORD_FIELD}    ${PASSWORD}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Errored Message For Locked User Is Displayed
    Page Should Contain    Epic sadface: Sorry, this user has been locked out.

Verify Main Page Is Not Opened
    Page Should Contain     Products