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
    Wait Until Page Contains Element    ${PRICE5} 
    ${STOCK_PRICE5}    Get Text    ${PRICE5}
    Set Global Variable    ${STOCK_PRICE5} 
    Wait Until Page Contains Element    ${CHANGE5}
    ${CHANGE_STOCK_PRICE5}    Get Text    ${CHANGE5}
    Set Global Variable    ${CHANGE_STOCK_PRICE5}
    Wait Until Page Contains Element    ${NAME5}
    ${FULL_COMPANY_NAME5}    Get Text    ${NAME5}
    Set Global Variable    ${FULL_COMPANY_NAME5} 