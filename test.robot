*** Settings ***
Library    SeleniumLibrary
Library    Collections

Test Setup        Open Doppee     https://training-platform.doppio-tech.com/login
Test Teardown      Close Browser    

Resource    ${CURDIR}/keywords/keyword.robot
Variables   ${CURDIR}/data_test.yaml

***Variables***
&{A}    Name=Tao     Age=16      City=Bangkok

*** Keywords ***
Create Fruit List 
    @{fruits}   Create List     apple     banana    cherry 
    Return From Keyword     @{fruits}
    
Calculate Square
    [Arguments]     ${number}
    ${result}       Evaluate    ${number}*${number}
    Return From Keyword       ${result}


Print Username
    [Arguments]     ${Name}=Tao     ${Age}=16      ${City}=Bangkok
    Log To Console  Robot Log Name : ${Name} 
    Log To Console  Log Age : ${Age}
    Log To Console  Log City : ${City}

Create User Info
    &{user_info}    Create Dictionary   name=Tew    city=Bangkok
    Return From Keyword     &{user_info}


Create Local Variable
    Set Local Variable   ${LOCAL_VAR}    "Local Value"
    Log To Console  ${LOCAL_VAR}
    

Create Global Variable
    Set Global Variable     ${GLOBAL_VAR}   "Global Value"
    

# Calculate Factorial1
#     [Arguments]    ${number}
#     ${result}    Set Variable    1
#     FOR    ${i}    IN RANGE    ${number}    0    -1   #
#            ${result}    Evaluate    ${result} * ${i}
#     END
#     Return From Keyword     ${result}


# Calculate Factorial 
#     [Arguments]     ${number}
#     ${number}       Convert To Integer    ${number}
#     Run Keyword If  ${number} == 1    Return From Keyword    1
#     ${previous}     Calculate Factorial    ${number - 1}
#     ${result}       Evaluate    ${number}*${previous}
#     Return From Keyword    ${result}



*** Test Cases ***
TC01
    ${result}   Calculate Factorial  3
    Log To Console      ${result}
    ${expected}     Convert To Integer      6
    Should Be Equal     ${result}   ${expected}


   




    Create Global Variable
    Create Local Variable
    Log To Console  ${GLOBAL_VAR}
    Log To Console  ${LOCAL_VAR}
    ${result}       Calculate Factorial     4
    Log To Console      ${result}

#     Print Username  
    
#     Log To Console      ${tc001['email']} and ${tc001['password']}
#     Sleep   3s
#     ${fruits_list}   Create Fruit List
#     Log To Console      ${fruits_list[0]}

#     ${result_from_keyword}   Calculate Square    50
#     Log To Console      ${result_from_keyword}

    # &{tew_info}     Create User Info
    # Log To Console      ${tew_info['name']}
TC02
    [Tags]      openaccount
    Input Information       ${email1}       ${tc002['password']}
    sleep   3s
    








    
    