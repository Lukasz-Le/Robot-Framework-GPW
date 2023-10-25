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
    Wait Until Page Contains Element    ${PRICE7} 
    ${STOCK_PRICE7}    Get Text    ${PRICE7}
    Set Global Variable    ${STOCK_PRICE7} 
    Wait Until Page Contains Element    ${CHANGE7}
    ${CHANGE_STOCK_PRICE7}    Get Text    ${CHANGE7}
    Set Global Variable    ${CHANGE_STOCK_PRICE7}
    Wait Until Page Contains Element    ${NAME7}
    ${FULL_COMPANY_NAME7}    Get Text    ${NAME7}
    Set Global Variable    ${FULL_COMPANY_NAME7}