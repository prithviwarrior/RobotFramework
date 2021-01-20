*** Settings ***
Library    DateTime


*** Test Cases ***
TC1_ValidCredential
    Log To Console    warrior    
    Log     warriorprithvi
    ${date}   Get Current Date    
    Log To Console    ${date}    
    
TC2_InvalidCredential
    Log To Console    warrior    
    Log     warriorprithvi
    ${date}   Get Current Date    
    Log To Console    ${date}    
    