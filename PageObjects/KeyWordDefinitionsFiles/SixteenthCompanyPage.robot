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
    Wait Until Page Contains Element    ${PRICE16} 
    ${STOCK_PRICE16}    Get Text    ${PRICE16}
    Set Global Variable    ${STOCK_PRICE16} 
    Wait Until Page Contains Element    ${CHANGE16}
    ${CHANGE_STOCK_PRICE16}    Get Text    ${CHANGE16}
    Set Global Variable    ${CHANGE_STOCK_PRICE16} 
    Wait Until Page Contains Element    ${NAME16}
    ${FULL_COMPANY_NAME16}    Get Text    ${NAME16}
    Set Global Variable    ${FULL_COMPANY_NAME16}