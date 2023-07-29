*** Settings ***
Documentation   This suite verifies login feature for different user types
Library        SeleniumLibrary
Resource    ../Resources/PageObjects/Common.robot

#run command
#robot -d results tests/SwagLabsLogin.robot
*** Variables ***

*** Test Cases ***
Standard User Can Log In
    [Documentation]    This test verifies standard user can log in
    [Tags]  Sanity
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text  user-name  standard_user
    Input Text  password    secret_sauce
    Click Button    login-button
    Wait Until Page Contains    Swag Labs
    sleep    2s
    Close Browser

Locked User Can't Log In
    [Documentation]    This test verifies locked out user can't log in
    [Tags]  Sanity
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text  user-name  locked_out_user
    Input Text  password    secret_sauce
    Click Button    login-button
    Page Should Not Contain    Swag Labs
    Page Should Contain    Epic sadface: Sorry, this user has been locked out.
    sleep    2s
    Close Browser

*** Keywords ***
