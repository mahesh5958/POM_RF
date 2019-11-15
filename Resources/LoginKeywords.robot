*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${siteUrl}    ${browser}
    Open Browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    
Enter User Name
    [Arguments]    ${userName}
    Input Text    ${text_loginUserName}    ${userName}
    
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}         
    
Click SignIn
    Click Button    ${btn_signIn}    
    
Verify Successfull Login
    Title Should Be    Find a Flight: Mercury Tours:    

Close My Browsers
    Close All Browsers
    

