*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidCredential
    Append To Environment Variable    Path    C:\\Program Files\\geckodriver-v0.28.0-win64
    Open Browser    http://www.echoecho.com/javascript.htm    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Sleep    3s     
    Click Element    B1    
    #Click Element    B2    

    ${alerttext}    Handle Alert    ACCEPT     timeout=30s
    #${alerttext}    Handle Alert    DISMISS     timeout=30s
    Log To Console    ${alerttext}    
    
 
    