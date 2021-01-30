*** Settings ***
Library    AppiumLibrary  

*** Test Cases ***

TC1_ValidCredential
    Open Application    http://localhost:4747/wd/hub
    ...    platformName=windows
    ...    app=C:\\WINDOWS\\system32\\notepad.exe  
    
    
     
    Input Text    //*[@Name="Text Editor"]    abcd   
    Click Element    //*[@Name="File"]    
    sleep    3s
    Click Element    //*[contains(@Name,"Save As")]    
    Input Text    xpath=(//*[contains(@Name,"File name")])[2]    C:\\automation.txt
    Click Element    //*[@Name="Save"] 


 