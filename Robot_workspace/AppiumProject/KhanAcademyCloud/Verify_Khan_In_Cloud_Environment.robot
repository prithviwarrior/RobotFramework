*** Settings ***
Library    AppiumLibrary    
Library    Process    

*** Test Cases ***
TC1_Verify_Invalid_login
    Open Application    http://hub-cloud.browserstack.com/wd/hub    
    ...    browserstack.user=prathviraj2
    ...    browserstack.key=xx7iY7YM2itoQ39aFrQB
    ...    app=bs://dae64ca049c38ed57c20555ba4cdecb0071dd4c3
    ...    device=Google Pixel 3
    ...    os_version=9.0
    ...    project=First Python project
    ...    build=Python Android
    ...    name=first_test

    Set Appium Timeout    40s
    Wait Until Page Contains Element    //*[@text="Profile"]    
    Click Element    //*[@text="Profile"]
    Wait Until Page Contains Element    //*[@text="Sign in"]
    Click Element    //*[@text="Sign in"]  