*** Settings ***
Library        SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser    about:blank     ${BROWSER}
    Maximize Browser Window
    Go To                           ${URL}

End Web Test
    Close Browser
