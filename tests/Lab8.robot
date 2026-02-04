*** Settings ***
Documentation     Lab 8.5 - Robot Framework on Jenkins
Library           BuiltIn

*** Variables ***
${PROJECT_NAME}    Software Engineering Lab 8
${AUTHOR}          Pojthagorn Painaree

*** Test Cases ***
Check Jenkins Environment
    [Documentation]    ตรวจสอบว่า Robot Framework สามารถรันบน Jenkins ได้
    Log    Running ${PROJECT_NAME}
    Log    Author: ${AUTHOR}
    Should Be Equal    1    1

Simple Calculation Test
    [Documentation]    ทดสอบการคำนวณพื้นฐาน
    ${result}=    Evaluate    2 + 3
    Should Be Equal    ${result}    5

String Validation Test
    [Documentation]    ทดสอบการตรวจสอบข้อความ
    ${text}=    Set Variable    Jenkins Robot Framework
    Should Contain    ${text}    Robot

*** Keywords ***
Show Test Summary
    Log    All tests executed successfully
