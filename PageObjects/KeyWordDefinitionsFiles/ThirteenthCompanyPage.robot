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
    Wait Until Page Contains Element    ${PRICE13} 
    ${STOCK_PRICE13}    Get Text    ${PRICE13}
    Set Global Variable    ${STOCK_PRICE13}
    Wait Until Page Contains Element    ${CHANGE13}
    ${CHANGE_STOCK_PRICE13}    Get Text    ${CHANGE13}
    Set Global Variable    ${CHANGE_STOCK_PRICE13}
    Wait Until Page Contains Element    ${NAME13}
    ${FULL_COMPANY_NAME13}    Get Text    ${NAME13}
    Set Global Variable    ${FULL_COMPANY_NAME13} 