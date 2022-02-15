*** Settings ***
Library  SeleniumLibrary
Variables  ../pages/locators.py

*** Keywords ***
Open My Browser
    Open My Browser
    [Arguments]   ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window

Click Register Link
    Click Link    ${link_Reg}

Enter FirstName
    [Arguments]    ${firstname}
    Input Text    ${txt_firstName}    ${firstname}

Enter LastName
    [Arguments]    ${lastname}
    Input Text    ${txt_lastName}    ${lastname}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}


Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Address1
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}

Enter Address2
    [Arguments]    ${add2}
    Input Text    ${txt_add2}    ${add2}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}   ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}   ${state}

Enter Postal Code
    [Arguments]    ${postalcode}
    Input Text    ${txt_postCode} ${postalcode}

Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}

Enter User Name
    [Arguments]    ${username}
    Input Text    ${txt_userName} ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_Password}    ${password}

Enter Confirmed Password

    [Arguments]     ${confirmpassword}
    Input Text    ${txt_conformedPassword}    ${confpassword}

Click Submit
    Click Button    ${btn_submit}

Verify Successful Registration
    Page Should Contain    Thanl you for registering


Close My Browser
    Close All Browsers
