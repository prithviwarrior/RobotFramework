*** Settings ***
Library    AppiumLibrary    



*** Test Cases ***

TC1_ValidCredentials
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=asus
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    
    Go To Url    url=https://jcpenney.com/
    
    Set Appium Timeout    30s    #Set timeout globally
    
    Click Element    //button[@class="HamburgerPlaceHolder-menuLink"]
    
    Wait Until Element Is Visible    //*[text()='My Account']
    Click Element    //div[text()='Sign In']    
    
    Wait Until Element Is Visible    //*[text()='Sign In']
    Click Element    //button[text()='Sign In']
    
    ${ErrorMessage}    Get Text    //p[@data-automation-id="signin_error-title"]
    Log To Console    ${ErrorMessage}    
    
    ${text}    Get Current Context
    Log To Console    ${text}    
    
    


    Close Application
    
