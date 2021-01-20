*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Open Browser    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=ff
    Maximize Browser Window
    Input Text    name=authUser    admin    
    Input Password    name=clearPass    pass    
    Select From List By Label   name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit'] 
    Page Should Contain    Flow Board    
    Mouse Over    //span[@data-bind="text:fname"]
    Click Element    //li[text()='Logout']    
    
       
    