*** Settings ***
Library    AppiumLibrary    


*** Test Cases ***

TC1_ValidCredentials
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    #...    app=C:\\Users\\CTEA\\eclipse-workspace\\Robot_Framework\\Robot_workspace\\AppiumProject\\app\\Khan Academy_v6.2.1_apkpure.com.apk
    


    Set Appium Timeout    30s

    Click Element    //*[@text='Profile']    #xpath is different
#gicve wait time to load the screen
    Wait Until Element Is Visible    //*[@text='Sign in']
    Click Element    //*[@text='Sign in']
    
    Input Text    //*[@text='Enter an e-mail address or username']    apple
    Input Password    //*[@text='Password']    apple123
    Click Element    xpath=(//*[@text='Sign in'])[2]
    
    Sleep    3s    
    
    ${ErrorMsg}    Get Text    //*[@text='Invalid password']
    Log To Console    ${ErrorMsg}    

    Wait Until Page Contains    Invalid password    
    Page Should Contain Text    Invalid password        

    Element Text Should Be    //*[contains(@text,'Invalid')]    Invalid password    

    Close Application
    

TC2_SignUp
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    app=C:\\Users\\CTEA\\eclipse-workspace\\Robot_Framework\\Robot_workspace\\AppiumProject\\app\\Khan Academy_v6.2.1_apkpure.com.apk
    
    Set Appium Timeout    30s

    Click Element    //*[@text='Profile']
    
    Wait Until Page Contains Element    //*[@text='Sign up with email']
    Click Element    //*[@text='Sign up with email']
    
    Sleep    2s    
    Input Text    //*[@text='First name']    Joe
    Input Text    //*[@text='Last name']    Biden
    Click Element    //*[@text='Birthday']
    Sleep    1s    
    Click Element    //*[@text='01']
    Sleep    1s    
    Clear Text    //*[@text='01']
    Sleep    1s    
    Input Text    //*[@resource-id='android:id/numberpicker_input']    26
    Click Element    //*[@text='Jun']
    Sleep    1s  
    Clear Text    //*[@text='Jun']
    Sleep    1s   
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]    jan
    Click Element    //*[@text='2000']
    Sleep    1s    
    Clear Text    //*[@text='2000']
    Sleep    1s
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]    1951
    Click Element    //*[@text='OK']
    

    Sleep    1s    
    Input Text    //*[@text='Email address']    jbiden@us.com
    Input Password    //*[@text='Password']    uspreSIDEN1
    
    Tap    //*    500    1300
    
    ${keyboardcheck}    Is Keyboard Shown
    Run Keyword If    ${keyboardcheck}=True    Hide Keyboard    
    
    Press Keycode    keycode   
    
    
    

    