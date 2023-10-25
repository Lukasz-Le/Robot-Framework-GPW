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
    Wait Until Page Contains Element    ${PRICE12} 
    ${STOCK_PRICE12}    Get Text    ${PRICE12}
    Set Global Variable    ${STOCK_PRICE12} 
    Wait Until Page Contains Element    ${CHANGE12}
    ${CHANGE_STOCK_PRICE12}    Get Text    ${CHANGE12}
    Set Global Variable    ${CHANGE_STOCK_PRICE12}
    Wait Until Page Contains Element    ${NAME12}
    ${FULL_COMPANY_NAME12}    Get Text    ${NAME12}
    Set Global Variable    ${FULL_COMPANY_NAME12} 