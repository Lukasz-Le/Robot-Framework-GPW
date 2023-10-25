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
    Wait Until Page Contains Element    ${PRICE17} 
    ${STOCK_PRICE17}    Get Text    ${PRICE17}
    Set Global Variable    ${STOCK_PRICE17} 
    Wait Until Page Contains Element    ${CHANGE17}
    ${CHANGE_STOCK_PRICE17}    Get Text    ${CHANGE17}
    Set Global Variable    ${CHANGE_STOCK_PRICE17} 
    Wait Until Page Contains Element    ${NAME17}
    ${FULL_COMPANY_NAME17}    Get Text    ${NAME17}
    Set Global Variable    ${FULL_COMPANY_NAME17}