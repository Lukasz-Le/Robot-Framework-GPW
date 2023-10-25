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
    Wait Until Page Contains Element    ${PRICE8} 
    ${STOCK_PRICE8}    Get Text    ${PRICE8}
    Set Global Variable    ${STOCK_PRICE8}
    Wait Until Page Contains Element    ${CHANGE8}
    ${CHANGE_STOCK_PRICE8}    Get Text    ${CHANGE8}
    Set Global Variable    ${CHANGE_STOCK_PRICE8} 
    Wait Until Page Contains Element    ${NAME8}
    ${FULL_COMPANY_NAME8}    Get Text    ${NAME8}
    Set Global Variable    ${FULL_COMPANY_NAME8} 