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
    Wait Until Page Contains Element    ${PRICE20} 
    ${STOCK_PRICE20}    Get Text    ${PRICE20}
    Set Global Variable    ${STOCK_PRICE20} 
    Wait Until Page Contains Element    ${CHANGE20}
    ${CHANGE_STOCK_PRICE20}    Get Text    ${CHANGE20}
    Set Global Variable    ${CHANGE_STOCK_PRICE20}
    Wait Until Page Contains Element    ${NAME20}
    ${FULL_COMPANY_NAME20}    Get Text    ${NAME20}
    Set Global Variable    ${FULL_COMPANY_NAME20} 