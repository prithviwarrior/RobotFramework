*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_FileUpload
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://www.naukri.com    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    #Sleep    5s    
    
    Choose File    id=file_upload    C:\\Users\\CTEA\\eclipse-workspace\\Robot_Framework\\Robot_workspace\\SeleniumProject\\red.xml
    
    Page Should Contain    uploaded successfully    
    