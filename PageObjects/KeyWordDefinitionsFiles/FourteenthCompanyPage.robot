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
    Wait Until Page Contains Element    ${PRICE14} 
    ${STOCK_PRICE14}    Get Text    ${PRICE14}
    Set Global Variable    ${STOCK_PRICE14} 
    Wait Until Page Contains Element    ${CHANGE14}
    ${CHANGE_STOCK_PRICE14}    Get Text    ${CHANGE14}
    Set Global Variable    ${CHANGE_STOCK_PRICE14}
    Wait Until Page Contains Element    ${NAME14}
    ${FULL_COMPANY_NAME14}    Get Text    ${NAME14}
    Set Global Variable    ${FULL_COMPANY_NAME14}