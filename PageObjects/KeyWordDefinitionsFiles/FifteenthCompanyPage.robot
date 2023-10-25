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
    Wait Until Page Contains Element    ${PRICE15} 
    ${STOCK_PRICE15}    Get Text    ${PRICE15}
    Set Global Variable    ${STOCK_PRICE15} 
    Wait Until Page Contains Element    ${CHANGE15}
    ${CHANGE_STOCK_PRICE15}    Get Text    ${CHANGE15}
    Set Global Variable    ${CHANGE_STOCK_PRICE15}
    Wait Until Page Contains Element    ${NAME15}
    ${FULL_COMPANY_NAME15}    Get Text    ${NAME15}
    Set Global Variable    ${FULL_COMPANY_NAME15}