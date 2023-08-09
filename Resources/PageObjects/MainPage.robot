*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${}

*** Keywords ***
Verify Main Page Loaded
    Wait Until Page Contains    Products

