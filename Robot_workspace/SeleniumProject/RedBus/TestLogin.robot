*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://redbus.in    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    xpath=//i[@id="i-icon-profile"] 
    Click Element   id=signInLink  
    Select Frame    xpath=//iframe[@class="modalIframe"]
    Input Text    id=mobileNoInp    1234567890
    Unselect Frame
     
    



