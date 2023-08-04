*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${EMAIL_FIELD}                email


*** Keywords ***
Verify Start Page Loaded
    Wait Until Page Contains Element    login-button
    Wait Until Page Contains Element    user-name
    Wait Until Page Contains Element    password

Enter Username
    Input Text  user-name  standard_user

Enter Password
    Input Text  password    secret_sauce

Click Login Button
    Click Button    login-button