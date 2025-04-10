*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://zrdptest.ue-one.com/login
${BROWSER}      Chrome
${USERNAME}     userwh03
${PASSWORD}     userwh05

*** Test Cases ***
Login To System
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://input[@placeholder='请输入用户名']
    Input Text    xpath://input[@placeholder='请输入用户名']    ${USERNAME}
    Input Text    xpath://input[@placeholder='请输入密码']    ${PASSWORD}
    Click Button    xpath://button[@type='submit']
    Wait Until Page Contains    登录成功    10
    [Teardown]    Close Browser

*** Keywords ***
Wait Until Page Contains
    [Arguments]    ${text}    ${timeout}
    Wait Until Page Contains    ${text}    ${timeout}