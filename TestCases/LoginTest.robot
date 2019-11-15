*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}    chrome
#${browser}    headlesschrome
${siteUrl}    http://newtours.demoaut.com/
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
Login Test
    Open My Browser    ${siteUrl}     ${browser}
    Enter User Name    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Sleep    2
    Verify Successfull Login
    Close My Browsers