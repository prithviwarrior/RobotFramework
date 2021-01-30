*** Settings ***
Library    AppiumLibrary  

*** Test Cases ***



TC1_HybridApp
    
    Comment    Hybrid apps contains both web view and native view

    Open Application    http://localhost:4724/wd/hub
    ...    platformName=android
    ...    deviceName=asus
    ...    appPackage=com.ltts.myts
    ...    appActivity=android.support.customtabs.trusted.LauncherActivity
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    ...    noReset=True
    
    Sleep    5s    
    
    ${contexts}    Get Contexts
    Log To Console    ${contexts}    
        
    Switch To Context     ${contexts}[1]    #${contexts}[1] has the WEBVIEW
    # Sleep    3s    
    
    ${con}    Get Current Context
    Log To Console    ${con}    

    Sleep    3s    

    Execute Script    document.getElementById('txtUsername').values='jj';
    

    Input Text    //*[@placeholder='PS Number']    abc@asd.com
    Input Text    //*[@resource-id='txtUsername']    umumba@ltts.com
    
