*** Settings ***
Library    SeleniumLibrary
Library    Collections

Test Setup        Open Doppee     https://training-platform.doppio-tech.com/login
Test Teardown      Close Browser    

Resource    ${CURDIR}/keywords/keyword.robot
Variables   ${CURDIR}/data_test.yaml

*** Keywords ***
Create Fruit List 
    @{fruits}   Create List     apple     banana    cherry 
    Return From Keyword     @{fruits}

*** Test Cases ***
TC01
    [Tags]      regression
    Input Information       ${tc001['email']}       ${tc001['password']}
    sleep   3s
    
TC02
    Input Information       ${email1}       ${tc002['password']}
    sleep   3s
    








    
    