*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.gotomeeting.com/en-in    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    Run Keyword And Ignore Error    Click Element    xpath=//div[@class="conversion-modal__close"] 
    
    Click Element    xpath=//a[@class="button button--primary button--small"]
    
    Input Text    name=FirstName    abc
    Input Text    name=LastName    d
    Input Text    name=Email    abc@d.com
    Input Text    name=PhoneNumber    0123456789
    Select From List By Value    name=JobTitle    Engineering 
    Input Text    name=Password    knjdik123
    #Click Element    xpath=//input[@value="10-99"]   
    Scroll Element Into View    xpath=//button[text()='Sign Up'] 
    Select Radio Button    companySize    10-99
    
    Click Element    xpath=//button[text()='Sign Up']

    
    ${actualtitle}     Get Title
    Log To Console    ${actualtitle}  
    Log    ${actualtitle}
    
    ${currenrturl}    Get Location   
    Log To Console    ${currenrturl}  
    Log    ${currenrturl}  
    
    
    
    
    
    
    