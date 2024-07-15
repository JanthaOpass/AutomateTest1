*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${url}                https://www.google.co.th/?hl=th
${Browser}                     Chrome
${locator_search}              id=APjFqb
${locator_2}                   xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div
${locator_4}                   xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[3]/td[1]/div/div
${locator_plus}                xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[4]/div/div
${locator_minus}               xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[4]/div/div
${locator_multi}               xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[3]/td[4]/div/div
${locator_divide}              xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[2]/td[4]/div/div
${locator_Equal to}            xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div
${locator_result}              xpath=//*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[1]/div[2]/div[2]/div/div

*** Keywords ***
open web google
    [Documentation]    ทำการเปิดwebbrowser
    [Tags]    openweb
    Set Selenium Speed    0.5
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

input keyword for Search
    Wait Until Element Is Visible    ${locator_search}
    Input Text    ${locator_search}    calculator
    Press Keys    ${locator_search}    ENTER    
    Wait Until Page Contains    calculator


Varify check result-Plus
    Click Element    ${locator_4}
    Click Element    ${locator_plus}
    Click Element    ${locator_2}
    Click Element    ${locator_Equal to}
    ${ans}=    Get Text    ${locator_result}    
    Should Be Equal As Integers    ${ans}    6

Varify check result-Minus
    Click Element    ${locator_4}
    Click Element    ${locator_minus}
    Click Element    ${locator_2}
    Click Element    ${locator_Equal to}
    ${ans}=    Get Text    ${locator_result}    
    Should Be Equal As Integers    ${ans}    2



anser
    [Arguments]    ${locator_result}    ${result}
    ${ans}=    Get Text    ${locator_result}    
    Should Be Equal As Integers    ${ans}    ${result}


*** Test Cases ***
    
TC01_Search
    open web google
    input keyword for Search
    Close Browser

TC02_plus
    open web google
    input keyword for Search
    Varify check result-plus
    Close Browser

TC03_Minus
    open web google
    input keyword for Search
    Varify check result-Minus
    Close Browser
