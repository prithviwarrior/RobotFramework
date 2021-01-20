*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://www.royalcaribbean.com/    browser=ff
    Maximize Browser Window
    #Set Selenium Implicit Wait    30s

    #Select Frame    //iframe[@class="email-capture__content"]
    Sleep    5s
    #Click Element    //span[text()='Sign up']
    # Wait Until Element Is Visible    xpath=//div[@class="email-capture__body"]/*      timeout=30s  
    

    FOR    ${I}    IN RANGE   0    999
    Run Keyword And Ignore Error   Click Element    xpath=//div[@class="email-capture__body"]/* 
    Run Keyword And Ignore Error    Click Element    //span[text()='Sign In']
    ${count}    Get Element Count    link=Create an account
    Exit For Loop If    ${count}>0
    END



    
    #Run Keyword And Ignore Error   Click Element    xpath=//div[@class="email-capture__body"]/* 
    #Sleep    2s    
    #Run Keyword And Ignore Error    Mouse Down    //span[text()='Sign In']
    #Click Element    //span[text()='Sign In']
    
    Set Selenium Implicit Wait    30s
    Click Element    //a[text()='Create an account'] 
    Input Text    id=mat-input-3    abc    
    Input Text    id=mat-input-4    def     
    Click Element    //span[text()='Month']    
    Click Element    //span[contains(text(), 'March')]   
    Click Element    //span[text()='Day']    
    Click Element    //span[contains(text(), '3')]  
    #Click Element    //span[text()='Country']    
    #Click Element    (//span[contains(text(), 'India')])[2]   
    
    Click Element    //span[text()='Country/Region of residence']
    Click Element    //span[contains(text(),' India ')]
    Input Text    mat-input-2    dr123@gmail.com
    Input Text    mat-input-6    asdfghjk123
    Click Element    //span[text()='Select one security question']
    Click Element    //span[contains(text(),' What was the first concert you attended? ')]
    Input Text    mat-input-7    Sunburn
    Click Element    //div[@class="mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin"]    
    Click Element    //button[@class="mat-royal-button btn-create"] 
    
    
        
    #Click Element    xpath=//div[@class="closeDigiframe"]    
    #Click Element    id=rciHeaderSignIn
    
TC3_ForLoop
    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}
        Exit For Loop If   ${i}>5
    END

