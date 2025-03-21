***Keywords***
Open Doppee 
    [Arguments]         ${url}
    Open Browser        ${url}      edge

Input Information  
    [Arguments]     ${username}     ${password}    
    Input Text      //input[@type="text"]       ${username}
    Input Text      //input[@type="password"]   ${password}