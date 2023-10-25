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
    Wait Until Page Contains Element    ${PRICE2} 
    ${STOCK_PRICE2}    Get Text    ${PRICE2}
    Set Global Variable    ${STOCK_PRICE2}
    Wait Until Page Contains Element    ${CHANGE2}
    ${CHANGE_STOCK_PRICE2}    Get Text    ${CHANGE2}
    Set Global Variable    ${CHANGE_STOCK_PRICE2}
    Wait Until Page Contains Element    ${NAME2}
    ${FULL_COMPANY_NAME2}    Get Text    ${NAME2}
    Set Global Variable    ${FULL_COMPANY_NAME2}