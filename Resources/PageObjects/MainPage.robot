*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${MAIN_PAGE_TITLE}              Products

*** Keywords ***
Verify Main Page Loaded
    Wait Until Page Contains    ${MAIN_PAGE_TITLE}

