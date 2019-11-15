*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser}    chrome
#${browser}    headlessfirefox    
${siteUrl}    http://newtours.demoaut.com/

*** Test Cases ***
Registration Test
    Open My Browser    ${siteUrl}    ${browser}
    Click On Register Link
    Enter First Name    David
    Enter Last Name    John
    Enter Phone Number    1234567890
    Enter Email    davidjohn@gmail.com
    Enter Address1    Toronto
    Enter Address2    Canada
    Enter City    Toranto
    Enter State    Bramton
    Enter Postal Code    L35 1E7
    Select Country    CANADA
    Enter User Name    johnxyz
    Enter Password    johnxyz
    Enter Confirm Password    johnxyz
    Click Submit
    Verify Successful Registration
    Close My Browsers