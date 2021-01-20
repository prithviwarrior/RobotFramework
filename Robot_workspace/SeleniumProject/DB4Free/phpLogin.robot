*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.db4free.net/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    //b[contains(text(), 'phpMyAdmin')]    
    Sleep    5s
    ${title}    Get Title
    Log To Console    ${title}   
    #switch to new tab with titles 
    Switch Window    phpMyAdmin     #Title of page
    
    Input Text    input_username    admin    
    Input Password    input_password    admin123    
    Click Element    input_go    
    #get error message and print in console
    
    ${errortext}    Get Text    //div[console(text(),'Cannot')]
    Log To Console    ${errortext}    
    
    Close Window
    
    