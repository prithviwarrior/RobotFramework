*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_BrowserSize
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://www.royalcaribbean.com/    browser=ff
    Maximize Browser Window
    
    ${width}    ${height}    Get Window Size    
    Log To Console    ${width}    
    Log To Console    ${height}    