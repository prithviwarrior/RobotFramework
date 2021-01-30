*** Settings ***
Library    AppiumLibrary  
Library    Process   
l   



*** Test Cases ***

TC1_ValidCredentials
    scree
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    app=C:\\Users\\CTEA\\eclipse-workspace\\Robot_Framework\\Robot_workspace\\AppiumProject\\app\\Khan Academy_v6.2.1_apkpure.com.apk
    

    Set Appium Timeout    30s
    Sleep    5s   
    
    #${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text, 'Arts')]    
    #Log To Console    ${output}     
    
    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text, 'Arts')]    
        Swipe By Percent    50    75    50    25    
        Exit For Loop If    '${output}[0]'=='PASS'
    END
    
    FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text, 'Art of Africa')]    
        Swipe By Percent    50    75    50    25    1000
        Exit For Loop If    '${output}[0]'=='PASS'
    END
    

TC2_VerifyStartAppium
    Start Process    appium    -p    4723    shell=True    alias=appiumserver
    ...    stdout=${CURDIR}/appium_stdout.txt    stderr=${CURDIR}/appium_stderr.txt    

    Process Should Be Running    appium
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    app=${OUTPUTDIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    

    Set Appium Timeout    30s
    Sleep    5s       
    Click Element    //*[@text='Profiles']
    

    














    
