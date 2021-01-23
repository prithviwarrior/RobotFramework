*** Settings ***
Library    AppiumLibrary    


*** Test Cases ***

TC1_ValidCredentials
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    appPackage=com.aranoah.healthkart.plus
    ...    appActivity=com.aranoah.healthkart.plus.home.HomeActivity
    ...    noReset=True
   
    Set Appium Timeout    30s
    
    
    Run Keyword And Ignore Error     Click Element   //*[@resource-id='com.aranoah.healthkart.plus:id/close']

    Wait Until Element Is Visible    //*[@text='Health Products']
    Click Element    //*[@text='Health Products']    #xpath is different
#gicve wait time to load the screen

    Wait Until Element Is Visible    //*[@text='Healthcare Devices']
    Click Element    //*[@text='Healthcare Devices']
    
    Wait Until Page Contains Element    //*[@text="Sort"]    
    Click Element    //*[@text="Sort"]
 
    Wait Until Page Contains Element    //*[@text="Price: High to Low"]    
    Click Element    //*[@text="Price: High to Low"]
    
    Wait Until Page Contains Element    //*[@text="ADD"]    
    Click Element    //*[@text="ADD"]
    
    Wait Until Page Contains Element    //*[@text="GO TO CART"]    
    Click Element    //*[@text="GO TO CART"]
    
    ${Amount}    Get Text    //*[@resource-id='com.aranoah.healthkart.plus:id/value']
    Log To Console    ${Amount}    
    
    Element Should Contain Text    //*[@resource-id='com.aranoah.healthkart.plus:id/value']    150924    
    
    Close Application
    

    
    
    
    










