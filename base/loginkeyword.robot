*** Settings ***
Library  SeleniumLibrary
Variables  ../pages/locators.py

*** Keywords ***
Open My Browser
    [Arguments]   ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}

Click SignIn
    Click Button    ${btn_signIn}

Verify Successful Login
    Title Should Be    Login: Mercury Tours


Close My Browser
    Close All Browsers

