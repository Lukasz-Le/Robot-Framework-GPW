*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00    
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Resource    ../Locators/locators.robot

*** Variables ***


*** Keywords ***
Download Company Data
    Wait Until Page Contains Element    ${PRICE1} 
    ${STOCK_PRICE1}    Get Text    ${PRICE1}
    Set Global Variable    ${STOCK_PRICE1} 
    Wait Until Page Contains Element    ${CHANGE1}
    ${CHANGE_STOCK_PRICE1}    Get Text    ${CHANGE1}
    Set Global Variable    ${CHANGE_STOCK_PRICE1}
    Wait Until Page Contains Element    ${NAME1}
    ${FULL_COMPANY_NAME1}    Get Text    ${NAME1}
    Set Global Variable    ${FULL_COMPANY_NAME1} 