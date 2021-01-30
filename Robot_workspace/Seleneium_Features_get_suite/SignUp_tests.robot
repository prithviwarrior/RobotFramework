*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_BrowserSize
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://www.royalcaribbean.com/    browser=ff
    Maximize Browser Window
    
    Set Selenium Implicit Wait    30s
    
    ${width}    ${height}    Get Window Size    
    Log To Console    ${width}    
    Log To Console    ${height}  
    
    Sleep    5s    
    Select Frame    //iframe[@class="email-capture__content"]
    
    Wait Until Element Is Visible    //input[@class="email__input"] 
    Click Element    //input[@class="email__input"]    
    Input Text    //input[@class="email__input"]     abc@bgv.com    
    
    Press Keys      NONE    RETURN