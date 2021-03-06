*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ElementDetails
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=http://www.google.com/    browser=ff
    Maximize Browser Window
    ${linkcount}    Get Element Count    //a
    Log To Console    ${linkcount}    
    
    ${text}    Get Text   (//a)[2]
    Log To Console    ${text}   
    
    ${href}    Get Element Attribute    //a    href
    Log To Console    ${href}    
    
TC2_GetWebElement
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=http://www.google.com/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${ele}     Get WebElement    //a
    Log To Console    ${ele}    
    
    ${text}    Get Text    ${ele}
    Log To Console    ${text}      
    
TC3_GetWebElementsTest
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=http://www.google.com/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${listOfElements}    Get WebElements    //a
    ${count}    Get Element Count    //a
    
    FOR    ${i}    IN RANGE    0    27
        ${text}    Get Text    ${listOfElements}[${i}]
        Log To Console    ${text}
    END

    FOR    ${ele}    IN    @{listOfElements}
        ${text}    Get Text    ${ele}
        Log To Console    ${text} 
        
    END
       

    FOR    ${i}    IN RANGE    @{count}
        ${text}    Get Text    ${listOfElements}[${i}]
        Log To Console    ${text}
        
        ${href}    Get Element Attribute    ${listOfElements}[${i}]    href
        Log To Console    ${href}
    END
    

TC4_GetWebElementsTest
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=http://www.google.com/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${listOfElements}    Get WebElements    //a
    ${count}    Get Element Count    //a

    FOR    ${i}    IN RANGE    0    ${count}
        
        ${text}    Get Text    ${listOfElements}[${i}]
        Log To Console    ${text}
        #${text}==image --> perform click
        Run Keyword If     '${text}'=='Images'    Click Element    ${listOfElements}[${i}] 
        Exit For Loop If    '${text}'=='Images'   
    END
    


TC5_GetWebElementsTest
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=http://www.google.com/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${listOfElements}    Get WebElements    //a

    FOR    ${ele}    IN     @{listOfElements}
        
        ${text}    Get Text    ${ele}
        Log To Console    ${text}    
    END



























