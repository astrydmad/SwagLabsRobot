*** Settings ***
Library        SeleniumLibrary

***Variables ***
${URL}      https://www.saucedemo.com/
${BROWSER}      chrome

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window
    Go To    ${URL}

End Web Test
    Close Browser