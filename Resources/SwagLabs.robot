*** Settings ***
Library        SeleniumLibrary
Resource    ../Resources/Common.robot

*** Keywords ***
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
