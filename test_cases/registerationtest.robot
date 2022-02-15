*** Settings ***
Library   SeleniumLibrary
Resource   ../base/registeration.robot

*** Variables ***
${browser}   chrome
${siteurl}    https://demo.guru99.com/test/newtours/register.php

*** Test Cases ***
    Open My Browser    ${siteurl}   ${browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName    John
    Enter Phone    1234567890
    Enter Email    davidJohn@gmail.com
    Enter Address1    Toronto
    Enter Address2    Canada
    Enter City    Toronto
    Enter State    Brampton
    Enter Postal Code    L35 1E7
    Select Country    CANADA
    Enter User Name    johnxyz
    Enter Password    johnxyz
    Enter Confirmed Password   johnxyz
    Click Submit
    Verify Successful Registration
    Close My Browser
