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
    Wait Until Page Contains Element    ${PRICE3} 
    ${STOCK_PRICE3}    Get Text    ${PRICE3}
    Set Global Variable    ${STOCK_PRICE3} 
    Wait Until Page Contains Element    ${CHANGE3}
    ${CHANGE_STOCK_PRICE3}    Get Text    ${CHANGE3}
    Set Global Variable    ${CHANGE_STOCK_PRICE3}
    Wait Until Page Contains Element    ${NAME3}
    ${FULL_COMPANY_NAME3}    Get Text    ${NAME3}
    Set Global Variable    ${FULL_COMPANY_NAME3}