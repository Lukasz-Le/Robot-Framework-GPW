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
    Wait Until Page Contains Element    ${PRICE4} 
    ${STOCK_PRICE4}    Get Text    ${PRICE4}
    Set Global Variable    ${STOCK_PRICE4} 
    Wait Until Page Contains Element    ${CHANGE4}
    ${CHANGE_STOCK_PRICE4}    Get Text    ${CHANGE4}
    Set Global Variable    ${CHANGE_STOCK_PRICE4}
    Wait Until Page Contains Element    ${NAME4}
    ${FULL_COMPANY_NAME4}    Get Text    ${NAME4}
    Set Global Variable    ${FULL_COMPANY_NAME4}