*** Settings ***
Library        SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/PageObjects/SignInPage.robot
Resource    ../Resources/PageObjects/LeftNav.robot
Resource    ../Resources/PageObjects/MainPage.robot

*** Keywords ***
Login With Standard User Credentials
    SignInPage.Verify Start Page Loaded
    SignInPage.Enter Username
    SignInPage.Enter Password
    SignInPage.Click Login Button
    MainPage.Verify Main Page Loaded
    sleep    2s

Log Out
    LeftNav.Click Log Out
    SignInPage.Verify Start Page Loaded

Login With Locked User Credentials
    [Arguments]    ${Username}     ${Password}
    SignInPage.Verify Start Page Loaded
    SignInPage.Enter Username   ${Username}
    SignInPage.Enter Password   ${Password}
    SignInPage.Click Login Button
    SignInPage.Verify Errored Message For Locked User Is Displayed
    SignInPage.Verify Main Page Is Not Opened