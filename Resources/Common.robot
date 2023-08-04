*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    chrome
    Maximize Browser Window
    Go To    https://www.saucedemo.com/

End Web Test
    Close Browser