*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver

    Open Browser    https://demo.openemr.io/openemr    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30
    Input Text    name=authUser    admin    
    Input Password    name=clearPass    pass    
    Select From List By Label   name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit'] 
    #Page Should Contain    Flow Board    
    Mouse Over    //div[text()='Patient/Client']
    Click Element    //div[text()='Patients']
    
    Select Frame    name=fin
    #Select Frame    xpath=(//iframe[@data-bind="location: $data, iframeName: $data.name, "])[3]
    Sleep    5s    
    #Click Element    //button[@id='create_patient_btn1'] 
    Click Element    create_patient_btn1    
    Unselect Frame   
    
    Select Frame    name=pat
    Sleep    5s    
    Input Text    name=form_fname    abchuhghg
    #Input Text    name="form_mname"    def         
    Input Text    name=form_lname    ghi4544554
    Input Text    name=form_DOB    2021-01-16
    Select From List By Value    form_sex    Male 
    Click Button    name=create
    Unselect Frame
    
    Select Frame    id=modalframe
    Sleep    5s    
    Click Element    //input[@value='Confirm Create New Patient']        
    Unselect Frame
    
    ${AlertTxt}    Handle Alert    
    Log To Console    ${AlertTxt}  
    Click Element    //div[@class='closeDlgIframe']      
   
    #${alerttext}    Handle Alert    timeout=30s
    #Log To Console    ${alerttext}    
    
              

    #Click Element    xpath=//div[@class="closeDigiframe"]  
      
    Select Frame    pat
    ${actualval}    Get Text    xpath=//h2[contains(text(),'Record Dashboard')]
    Log To Console    ${actualval}    
    
    Should Contain    ${actualval}    Bob Marley    msg=validation on name
    

    #Select Frame    pat
   
    #Run Keyword And Ignore Error    Click Element    xpath=//div[@class="closeDlgIframe"]            
         
    #Click Element    xpath=//button[@data-automation-id="at-remove-item-link"]  
   
    


    #Mouse Over    //span[@data-bind="text:fname"]
    #Click Element    //li[text()='Logout']    
    
       
    