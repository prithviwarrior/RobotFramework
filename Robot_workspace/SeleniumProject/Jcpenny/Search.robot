*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.jcpenny.com/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    name=Ntt    acdc mens crew neck short sleeve music graphic t shirt
    Click Element    xpath=//button[@title='search'] 
    Click Element    xpath=//button[text()='large'] 
    Select From List By Value    name=quantity    2    
    Click Element    xpath=//p[@data-automation-id='addToCart']     
    Click Element    xpath=//button[text()='View Cart & Checkout']
    
    Run Keyword And Ignore Error    Click Element    id=MetricalCloseArea        
         
    Click Element    xpath=//button[@data-automation-id="at-remove-item-link"]  
    
    ${actualtitle}     Get Title
    Log To Console    ${actualtitle}  
    Log    ${actualtitle}
    
    ${currenrturl}    Get Location   
    Log To Console    ${currenrturl}  
    Log    ${currenrturl}  
    
    
    
    
    
    
    