*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.medibuddy.in/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    xpath=//a[text() = 'Signup'] 
    Input Text    name=firstName    abc
    Input Text    name=phone    0123456789
    Input Text    name=username    abcd
    Input Text    name=password    qwszxcfff
    Click Element    xpath=//input[@ng-model="showRegisterPassword"] 
    Click Button    Register
    Unselect Frame
    
    
    