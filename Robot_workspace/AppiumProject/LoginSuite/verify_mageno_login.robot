*** Settings ***
Library    AppiumLibrary    



*** Test Cases ***

TC1_ValidCredentials
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=redmi
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    
    Go To Url    url=https://magento.com/
    
    Set Appium Timeout    30s    #Set timeout globally
    
    Click Element    //button[@class="nav-menu-button js-menu-button visible-xs visible-sm"]
    #Click Element    //button[@class="nav-menu-button js-menu-button visible-xs visible-sm open"]
    Wait Until Element Is Visible    //*[text()='My Account']      timeout=30s  
    Click Element    //span[text()='My Account']    
    
    Wait Until Page Contains Element    //*[@id='email']   
    Input Text    //*[@id='email']    balaji0017@gmail.com    
    Input Password    //*[@id='pass']    welcome@12345    
    Click Element    //*[@id='send2']    
    
    Wait Until Page Contains    Log Out    
    Page Should Contain Text    Log Out    
    
    FOR    ${i}    IN    0    99999
        Run Keyword And Ignore Error    Click Element    //*[@id='send2']    
        Execute Script    window.scrollBy(0,500)
        ${count}    Get Matching Xpath Count    //*[text()='Log Out']
        Exit For Loop If    ${count}>1
    END
    

    #Title Should Be    My Account  
    #Click Element    link=Log Out
    Close Application