***Settings***
Library     SeleniumLibrary
Library     DebugLibrary
Resource    ${CURDIR}/keywords/keyword.robot


***Keywords***
Test If
    [Arguments]     ${text}
    IF  '${text}'=='Reena'
        Log To Console       Reena leading KTAM for another year
    ELSE IF     '${text}'=='Nilecon'
        Log To Console       Nilecon Mai Lerd
    ELSE
        Log To Console       Sawasdee wan jan
    END

KTAM Name
    [Arguments]     ${name}
    IF  '${name}'=='Reena'
        Log To Console          Reena is leader of KTAM Gang
    ELSE IF     '${name}'=='Nilecon'
        Log To Console          Nilecon Mai Lerd
    ELSE IF     '${name}'=='Nan'
        Log To Console          KTAM PO
    ELSE
        Log To Console          KTAM Baby
    END

Test If Number
    [Arguments]     ${Number}
    IF   ${number}==10
        Log To Console      This is 10!
    ELSE IF   ${number}>10
        Log To Console      This is greater than 10!
    ELSE
        Log To Console      This is less than 10
    END


Reena
    [Arguments]     ${name}     ${surname}
    IF  '${name}'=='Reena'
        IF   '${surname}'=='Baha'
            Log To Console      This is the real Reena
        ELSE
            Log To Console      This is not real Reena
        END
    ELSE
        Log To Console          KTAM Baby
    END


***Test Cases***
TC01: To Verify Open Doppee Website
    Reena   Tao     Williams