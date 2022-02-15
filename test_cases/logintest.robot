*** Settings ***
Library  SeleniumLibrary
Resource  ../base/loginkeyword.robot

*** Variables ***
${browser}  chromedriver.exe
${siteurl}  https://demo.guru99.com/test/newtours/
${username}    tutorial
${password}    tutorial

*** Test Cases ***
LoginTest
    Open My Browser    ${siteurl}   ${browser}
    Enter UserName    ${username}
    Enter Password    ${password}
    Click SignIn
    Sleep    3
    Verify Successful Login
    Close My Browser