*** Settings ***
Library            SeleniumLibrary
Resource           ${CURDIR}/Variable001.robot    
Resource           ${CURDIR}/keyword001.robot
Suite Setup        Set Selenium Speed    0.3s   
Suite Teardown     Close All Browsers
Test Setup         Open Web browser    ${url_login}    ${Browser}
Test Teardown      Close Browser

*** Test Cases ***
TC001-input mail-pass
    input data for mail-pass

TC002-Search
    Varify Search

TC003-Clear data
    Clear

TC004-Next page
    Next page
    
TC005-inputdata Add user
    input data for add user

TC006-inputdata Add user-reset-back
    input data for add user-reset

TC007-Notifications
    Notifications

TC08-Log out
    Log out

TC009-select-role,plan,status
    [Documentation]    ใช้ทดสอบเลือก Role,plan,status
    [Tags]    TestR,P,T
    [Setup]
    [Template]    data template
    1    1    1
    1    0    0
    0    2    0
    0    0    3
    3    0    2
    2    2    0
    0    2    3  
    [Teardown]   


TC10-Add user_Fail
    [Documentation]    ใช้ทดสอบกรอกข้อมูลไม่ครบถ้วน-Add user
    [Tags]    Adduserfail
    [Setup]
    [Template]    input data fail-Add user
    ${EMPTY}   อินขาน      kanok@gmail.com   123456    08222222222    female    1    1    1    1    ${locator_error-firstname}       This field is required
    กนกนวล    ${EMPTY}    kanok@gmail.com   123456    08222222222    female    1    1    1    1    ${locator_error-lastname}         This field is required
    กนกนวล    อินขาน        ${EMPTY}         123456    08222222222    female    1    1    1    1    ${locator_error-email}           This field is required
    กนกนวล    อินขาน       kanok@gmail.com   ${EMPTY}  08222222222    female    1    1    1    1    ${locator_error-password}        This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456      ${EMPTY}     female    1    1    1    1    ${locator_error-mobile-phone}    This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456    08222222222     emp      1    1    1    1    ${locator_error-gender}          This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456    08222222222    female    0    1    1    1    ${locator_error-courses}         This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456    08222222222    female    1    0    1    1    ${locator_error-nationality}     This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456    08222222222    female    1    1    0    1    ${locator_error-role}            This field is required
    กนกนวล    อินขาน       kanok@gmail.com   123456    08222222222    female    1    1    1    0    ${locator_error-plan}            This field is required
    [Teardown]
