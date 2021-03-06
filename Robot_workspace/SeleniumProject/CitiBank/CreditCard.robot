*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidCredential
    Append To Environment Variable    Path    C:\\Program Files\\geckodriver-v0.28.0-win64
    Open Browser    url=https://www.online.citibank.co.in/    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//a[text()='APPLY FOR CREDIT CARDS'] 
    #Sleep    8s       
    Switch Window    Online Credit Card Application Form | Citi India
    Click Element    id=fancybox-close    
    Input Text    name="email-email-1598329727016"    warrior   
    Input Text    name="mobile-text-1598329731917"    01232456789    
    Click Element    xpath=//option[text()='Mx.']
    Input Text    name="firstName-text-1598329735386"    Emilia     
    Click Element    xpath=//input[@tabindex="6"]
    Click Element    xpath=//input[@error="Please select your Preferred Mailing Address"]
    Click Element    id=auth_tnc
    Click Element    id=marketing_offers
                    