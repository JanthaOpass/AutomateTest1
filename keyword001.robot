*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variable001.robot

*** Keywords ***
Open Web browser
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url_login}    ${Browser}
    Wait Until Page Contains    Kru P' Beam
    Maximize Browser Window

input data for mail-pass
    Wait Until Element Is Visible     ${locator_email}    5s  
    Input Text                        ${locator_email}    user.test@krupbeam.com
    Input Text                        ${locator_pass}     123456789
    Click Element                     ${locator_btnlogin}

Varify Search
    input data for mail-pass
    Wait Until Element Is Visible    ${locator_btn-search}
    Click Element                    ${locator_btn-search}
    Wait Until Element Is Visible    ${locator_user} 

Clear
    input data for mail-pass
    Wait Until Element Is Visible    ${locator_select-role}
    Click Element    ${locator_select-role}
    Wait Until Element Is Visible                ${locator_select-role-1}   
    Click Element    ${locator_select-role-1}
    Click Element    ${locator_select-plan}
    Wait Until Element Is Visible                ${locator_select-plan-1}   
    Click Element    ${locator_select-plan-1}
    Click Element    ${locator_select-status}
    Wait Until Element Is Visible                ${locator_select-status-1}  
    Click Element    ${locator_select-status-1}
    Click Element    ${locator_btn-search}
    Wait Until Element Is Visible                ${locator_user}
    Click Element    ${locator_btn-clear}

drop-rows page
    Click Element    ${locator_row111}
    Wait Until Element Is Visible                ${locator_row1}
    Click Element    ${locator_row1}

Next page
    Varify Search      
    Click Button    ${locator_next}
    Wait Until Element Is Visible                ${locator_user}
    drop-rows page
    Wait Until Element Is Visible                ${locator_user}

Notifications
    input data for mail-pass
    Wait Until Element Is Visible               ${locator_notic} 
    Click Element    ${locator_notic}
    Wait Until Page Contains    Notifications

Log out
    input data for mail-pass
    Wait Until Element Is Visible                ${locator_pro1}
    Click Element    ${locator_pro1}
    Wait Until Element Is Visible                ${locator_logout}
    Click Element    ${locator_logout}

Select list nationality
    Click Element    ${locator_nationality}
    Wait Until Element Is Visible                ${locator_nationality1}    2s
    Click Element    ${locator_nationality1}

Select list select-role
    Click Element    ${locator_select-role}
    Wait Until Element Is Visible                ${locator_select-role1}    2s
    Click Element    ${locator_select-role1}

Select list logator_select-plan
    Click Element    ${locator_select-plan}
    Wait Until Element Is Visible                ${locator_select-plan1}    2s
    Click Element    ${locator_select-plan1}

Varify add user
    Click Element    ${locator_select-role}
    Wait Until Element Is Visible                ${locator_select-role-3}    2s
    Click Element    ${locator_select-role-3}
    click Element    ${locator_select-plan}
    Wait Until Element Is Visible                ${locator_select-plan-1}        2s
    Click Element    ${locator_select-plan-1}
    Click Element    ${locator_btn-search}
    Wait Until Element Is Visible                ${locator_user}
    
input data for add user
    input data for mail-pass
    Wait Until Element Is Visible                ${locator_btnadd}
    Click Element         ${locator_btnadd}
    Wait Until Page Contains    Kru P' Beam
    Input Text            ${locator_firstname}        กนกนวล 
    Input Text            ${locator_lastname}         อินขาน
    Input Text            ${locator_email}            Beam1234@gmail.com
    Input Text            ${locator_password}         1234567890
    Input Text            ${locator_mobile-phone}     08222222222
    Select Radio Button   ${locator_gender}           female
    Select Checkbox       ${locator_checkSQL}    
    Select Checkbox       ${locator_checkTM}
    Select list nationality
    Select list select-role
    Select list logator_select-plan
    Click Element         ${locator_sign-up}
    Wait Until Page Contains    Register Success
    Click Element         ${locator_btn-ok}
    Wait Until Page Contains    Search Filters
    Varify add user
    Sleep    5s



input data for add user-reset
    input data for mail-pass
    Click Element         ${locator_btnadd}
    Wait Until Page Contains    Kru P' Beam
    Input Text            ${locator_firstname}        กนกนวล 
    Input Text            ${locator_lastname}         อินขาน
    Input Text            ${locator_email}            Beam1234@gmail.com
    Input Text            ${locator_password}         1234567890
    Input Text            ${locator_mobile-phone}     08222222222
    Select Radio Button   ${locator_gender}           female
    Select Checkbox       ${locator_checkSQL}
    Select Checkbox       ${locator_checkTM}
    Select list nationality
    Select list select-role
    Select list logator_select-plan
    Scroll Element Into View    ${locator_hyperlink-reset}
    Click Element               ${locator_hyperlink-reset}
    Scroll Element Into View    ${locator_back}
    Click Element               ${locator_back}
    Wait Until Page Contains    Search Filters


data template
    [Arguments]    ${role}    ${plan}    ${status}
    Open Web browser    ${url}    ${Browser}
    input data for mail-pass
    Wait Until Element Is Visible    ${locator_select-role}
    Click Element        ${locator_select-role}
    IF  ${role} == 1
        Click Element    ${locator_select-role-1}
    ELSE IF  ${role} == 0
    Click Element        ${locator_role-0}
    ELSE IF  ${role} == 2
        Click Element    ${locator_select-role-2}
    ELSE IF  ${role} == 3
        Click Element    ${locator_select-role-3}
    END

    Click Element        ${locator_select-plan}
    IF  ${plan} == 1
        Click Element    ${locator_select-plan-1}
    ELSE IF  ${plan} == 2
        Click Element    ${locator_select-plan-2}
    ELSE IF  ${plan} == 0
    Click Element        ${locator_plan-0}
    END

    Click Element        ${locator_select-status}
    IF  ${status} == 1
        Click Element    ${locator_select-status-1}
    ELSE IF  ${status} == 0
    Click Element        ${locator_status-0}
    ELSE IF    ${status} == 2
        Click Element    ${locator_select-status-2}
    ELSE IF    ${status} == 3
        Click Element    ${locator_select-status-3}
    END
    
    Wait Until Element Is Visible    ${locator_btn-search}
    Click Element    ${locator_btn-search}
    Wait Until Element Is Visible    ${locator_user}
    Close Browser


input data fail-Add user
    [Arguments]           ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${checkbox}    ${nationality}    ${select-role}    ${select-plan}    ${locator}   ${msg}
    Open Web browser    ${url}    ${Browser}
    input data for mail-pass
    Wait Until Element Is Visible    ${locator_btnadd}
    Click Element        ${locator_btnadd}
    Wait Until Page Contains    Kru P' Beam
    Input Text            ${locator_firstname}        ${firstname}
    Input Text            ${locator_lastname}         ${lastname}
    Input Text            ${locator_email}            ${email}
    Input Text            ${locator_password}         ${password}
    Input Text            ${locator_mobile-phone}     ${mobile}

    IF  "${gender}" != "emp"    
        Select Radio Button    ${locator_gender}    ${gender}
    END

    IF  ${checkbox} == 1
    Select Checkbox       ${locator_checkSQL} 

    ELSE IF  ${checkbox} == 2
    Select Checkbox       ${locator_checkSQL}    
    Select Checkbox       ${locator_checkTM}
    
    ELSE IF  ${checkbox} == 3
    Select Checkbox       ${locator_checkSQL}    
    Select Checkbox       ${locator_checkTM}
    Select Checkbox       ${locator_checkAT}
    ELSE IF  ${checkbox} == 4
    Select Checkbox       ${locator_checkSQL}    
    Select Checkbox       ${locator_checkTM}
    Select Checkbox       ${locator_checkAT}
    Select Checkbox       ${locator_checkAT2}
    END

    IF  ${nationality} == 1
    Select list nationality
    END
    
    IF  ${select-role} == 1
    Select list select-role
    END

      IF  ${select-plan} == 1
    Select list logator_select-plan
    END
    
    Click Element       ${locator_sign-up}
    Verify error msg    ${locator}   ${msg}
    Close Browser

Verify error msg
    [Arguments]    ${locator}   ${msg}=${EMPTY}
    ${txt}=    Get Text   ${locator}
    Should Be Equal As Strings     ${txt}    ${msg}