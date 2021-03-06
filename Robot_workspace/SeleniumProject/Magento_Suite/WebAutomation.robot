*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Log To Console    ${OUTPUT_DIR}\\driver    
    Append To Environment Variable    Path    ${OUTPUT_DIR}     #C:\\Program Files\\geckodriver-v0.28.0-win64    
    Open Browser    url=https://magento.com/    browser=ff
    Maximize Browser Window
    Click Element     link=My Account
    Input Text    id=email    balaji0017@gmail.com    
    Input Password    id=pass    welcome@12345    
    Click Element    name=send    
    Title Should Be    My Account  
    Click Element    link=Log Out   
    Close Window 