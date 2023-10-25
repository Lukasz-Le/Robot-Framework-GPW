*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00    
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Resource    ../Locators/locators.robot

*** Keywords ***
Download Company Data
    Wait Until Page Contains Element    ${PRICE6} 
    ${STOCK_PRICE6}    Get Text    ${PRICE6}
    Set Global Variable    ${STOCK_PRICE6}  
    Wait Until Page Contains Element    ${CHANGE6}
    ${CHANGE_STOCK_PRICE6}    Get Text    ${CHANGE6}
    Set Global Variable    ${CHANGE_STOCK_PRICE6} 
    Wait Until Page Contains Element    ${NAME6}
    ${FULL_COMPANY_NAME6}    Get Text    ${NAME6}
    Set Global Variable    ${FULL_COMPANY_NAME6} 