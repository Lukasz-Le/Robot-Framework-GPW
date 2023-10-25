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
    Wait Until Page Contains Element    ${PRICE10} 
    ${STOCK_PRICE10}    Get Text    ${PRICE10}
    Set Global Variable    ${STOCK_PRICE10}
    Wait Until Page Contains Element    ${CHANGE10}
    ${CHANGE_STOCK_PRICE10}    Get Text    ${CHANGE10}
    Set Global Variable    ${CHANGE_STOCK_PRICE10}
    Wait Until Page Contains Element    ${NAME10}
    ${FULL_COMPANY_NAME10}    Get Text    ${NAME10}
    Set Global Variable    ${FULL_COMPANY_NAME10}