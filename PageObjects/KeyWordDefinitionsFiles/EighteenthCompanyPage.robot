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
    Wait Until Page Contains Element    ${PRICE18} 
    ${STOCK_PRICE18}    Get Text    ${PRICE18}
    Set Global Variable    ${STOCK_PRICE18}
    Wait Until Page Contains Element    ${CHANGE18}
    ${CHANGE_STOCK_PRICE18}    Get Text    ${CHANGE18}
    Set Global Variable    ${CHANGE_STOCK_PRICE18} 
    Wait Until Page Contains Element    ${NAME18}
    ${FULL_COMPANY_NAME18}    Get Text    ${NAME18}
    Set Global Variable    ${FULL_COMPANY_NAME18}