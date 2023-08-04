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
    Begin Web Test
    Login With Standard User Credentials
    Log Out
    End Web Test

#Locked User Can't Log In
#    [Documentation]    This test verifies locked out user can't log in
#    [Tags]  Sanity
#    Open Browser    https://www.saucedemo.com/    chrome
#    Input Text  user-name  locked_out_user
#    Input Text  password    secret_sauce
#    Click Button    login-button
#    Page Should Contain    Epic sadface: Sorry, this user has been locked out.
#    sleep    2s
#    Close Browser

#Empty Credentials
#    [Documentation]    This test verifies error when credentials are empty
#    [Tags]  Smoke
#    Open Browser    https://www.saucedemo.com/    chrome
#    Input Text  user-name  locked_out_user
#    Click Button    login-button
#    Page Should Contain    Epic sadface: Password is required
#    Clear Element Text  user-name
#    sleep    10s
#    Input Text  password  secret_sauce
##    Click Button    login-button
##    Page Should Contain    Epic sadface: Username is required
##    Clear Element Text  user-name
##    Click Button    login-button
##    Page Should Contain    Epic sadface: Username is required
#    sleep    15s
#    Close Browser

*** Keywords ***

Begin Web Test
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Go To    https://www.saucedemo.com/

Login With Standard User Credentials
    Input Text  user-name  standard_user
    Input Text  password    secret_sauce
    Click Button    login-button
    Wait Until Page Contains    Products
    sleep    2s

Log Out
    Click Button    react-burger-menu-btn
    sleep    1s
    Click Element    xpath=//*[@id="logout_sidebar_link"]
    Wait Until Page Contains Element    login-button

End Web Test
    Close Browser