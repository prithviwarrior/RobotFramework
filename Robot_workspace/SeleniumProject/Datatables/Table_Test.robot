*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_TableTest    
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/simple.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Table Should Contain    xpath=//table[@id='example']    Brenden Wagner    
    
    ${cell}    Get Table Cell     xpath=//table[@id='example']    1    2    
    Log To Console    ${cell}    

    Table Cell Should Contain    xpath=//table[@id='example']    1    2    Position    
    
    Table row Should Contain    xpath=//table[@id='example']    1    Age    


TC2_TableHandlingTest
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/simple.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s 
    
    #! to 11
    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${name}
    END
    

TC3_DataFetchTable
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://editor.datatables.net/    browser=chrome
    Set Selenium Implicit Wait    25s

    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        log to console    ${name}    
        Run Keyword If    '${name}'=='Brenden Wagner'    Click Element    //table[@id="example"]/tbody/tr[5]/td[1]
        Exit For Loop If    '${name}'=='Brenden Wagner'           
    END    
    
    Click Element    //button[@class="dt-button buttons-selected buttons-edit"]        
    Click Element    (//div[@class="DTE_Field_InputControl"])[3]
    Input Text    id=DTE_Field_position    QA Engineer
    Click Element    //button[@class="btn"]            
    
    
    
    Table Should Contain    xpath=//table[@id='example']    Brenden Wagner
 










