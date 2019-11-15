*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${siteUrl}    ${browser}
    Open Browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    
Click On Register Link
    Click Link    ${link_register}    
    
Enter First Name
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}    
    
Enter Last Name
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}    
    
Enter Phone Number
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}    
    
Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}    
    
Enter Address1
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}    
    
Enter Address2
    [Arguments]    ${add2}
    Input Text    ${txt_add2}    ${add2}    
    
Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city} 
    
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state} 
    
Enter Postal Code
    [Arguments]    ${postalCode}
    Input Text    ${txt_postCode}    ${postalCode}    
    
Select Country
    [Arguments]    ${country}      
    Select From List By Label    ${drp_country}    ${country}
    
Enter User Name
    [Arguments]    ${userName}
    Input Text    ${txt_userName}    ${userName}   
    
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password} 
    
Enter Confirm Password
    [Arguments]    ${confPassword}
    Input Text    ${txt_confirmPassword}    ${confPassword} 
    
Click Submit
    Click Button    ${btn_submit}    
    
Verify Successful Registration
    Page Should Contain    Thank you for registering    
    
Close My Browsers
    Close All Browsers
    

   
        