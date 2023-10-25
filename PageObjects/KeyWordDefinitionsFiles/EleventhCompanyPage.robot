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
    Wait Until Page Contains Element    ${PRICE11} 
    ${STOCK_PRICE11}    Get Text    ${PRICE11}
    Set Global Variable    ${STOCK_PRICE11} 
    Wait Until Page Contains Element    ${CHANGE11}
    ${CHANGE_STOCK_PRICE11}    Get Text    ${CHANGE11}
    Set Global Variable    ${CHANGE_STOCK_PRICE11}  
    Wait Until Page Contains Element    ${NAME11}
    ${FULL_COMPANY_NAME11}    Get Text    ${NAME11}
    Set Global Variable    ${FULL_COMPANY_NAME11}  