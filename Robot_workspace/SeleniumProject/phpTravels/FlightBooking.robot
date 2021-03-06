*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://phptravels.net/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    #Go To    url=https://phptravels.net/
    
    #Click Element    link=USD    
    #Click Element    link=INR   
    #Click Element    //a[text()='INR']     
    #Sleep     5s
    
#get weeb element by clicking
    ${ele}    Get WebElement    //a[text()='INR']   
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    Sleep    5s    
    

    Click Element    //a[@class="text-center flights "]
    
    Click Element    //a[@class="chosen-single"]    
    Click Element    //li[text()='Business']
    
#Inspect elements changes the x path as soon as we perform a click
    
    #Click Element    (//div[@class='select2-input'])[8]    
    #Input Text    (//input[@class='select2-input'])[8]    ewr    
    #Sleep    3s    
    #Click Element    //div[text()='New York (']    
    
    #Input Text    locator    text     

#We can use keys to solve issue easily, selecting from location
    Click Element    xpath =//span[text()='LHE']
    
    Sleep    5s    
    Press Keys    None    new york
    Click Element    xpath=//div[contains(text(),'EWR')]   
    
#Selecting destination
    Click Element    xpath =//span[text()='DXB']
    Sleep    5s    
    Press Keys    None    sindal
    Click Element    xpath=//div[contains(text(),'CNL')]  
    

#Select departure date
#Input text with thew help of java script
    #Execute Javascript    document.getElementById('FlightsDateStart').value='2021-01-28'
    
#get weeb element by clicking
    ${ele}    Get WebElement    //input[@placeholder='Depart']   
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    

#get weeb element
    #${ele}    Get WebElement    //input[@placeholder='Depart']   
    #Execute Javascript    arguments[0].value='2021-01-28'    ARGUMENTS    ${ele}
    
#Select number of adults
    FOR    ${i}    IN RANGE    1    4
        Click Element    xpath=(//button[@class="btn btn-white bootstrap-touchspin-up "])[3]
    END
    #Click Element    xpath=(//button[@class="btn btn-white bootstrap-touchspin-up "])[3]  
    
#select number of infants
    FOR    ${i}    IN RANGE    1    3
        Click Element    xpath=(//button[@class="btn btn-white bootstrap-touchspin-up "])[5]
    END  
    

    Click Element    xpath=(//button[contains(text(),'Search')])[2]   
     
    Click Element    xpath=(//button[contains(text(),'Book Now')]) 
    
    ${TotalAmount}    Get Text    xpath=(//h5[@class="float-none"])[2]
    Log To Console    ${TotalAmount}    
    
    
    
TC5_TableTest    
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/simple.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Table Should Contain    xpath=//table[@id='example']    Brenden     
    
    ${cell}    Get Table Cell     xpath=//table[@id='example']    1    2    
    Log To Console    ${cell}    

    Table Cell Should Contain    xpath=//table[@id='example']    1    2    Name    
    
    Table row Should Contain    xpath=//table[@id='example']    1    Age    



















