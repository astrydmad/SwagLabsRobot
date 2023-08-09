*** Settings ***
Documentation   This suite verifies login feature for different user types
Resource    ../Resources/SwagLabs.robot
Resource    ../Resources/Common.robot
Suite Setup    Begin Web Test
Suite Teardown    End Web Test
#Test Setup    Begin Web Test
#Test Teardown    End Web Test

#run command
#robot -d results tests/SwagLabsLogin.robot
*** Variables ***
${BROWSER}                          chrome
${URL}                              https://www.saucedemo.com/
${USERNAME} =              standard_user    locked_out_user
${PASSWORD} =               secret_sauce

*** Test Cases ***
#Standard User Can Log In
#    [Documentation]    This test verifies standard user can log in
#    [Tags]  Sanity
#    SwagLabs.Login With Standard User Credentials
#    SwagLabs.Log Out

Locked User Can't Log In
    [Documentation]    This test verifies locked out user can't log in
    [Tags]  Sanity
    SwagLabs.Login With Locked User Credentials     ${USERNAME}[0]      ${PASSWORD}[0]
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