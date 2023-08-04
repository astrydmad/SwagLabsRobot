*** Settings ***
Library        SeleniumLibrary

*** Variables ***

*** Keywords ***
Click Log Out
    Click Button    react-burger-menu-btn
    sleep    1s
    Click Element    xpath=//*[@id="logout_sidebar_link"]

