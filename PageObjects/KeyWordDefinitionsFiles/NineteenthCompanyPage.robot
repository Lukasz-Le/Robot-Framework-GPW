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
    Wait Until Page Contains Element    ${PRICE19} 
    ${STOCK_PRICE19}    Get Text    ${PRICE19}
    Set Global Variable    ${STOCK_PRICE19}
    Wait Until Page Contains Element    ${CHANGE19}
    ${CHANGE_STOCK_PRICE19}    Get Text    ${CHANGE19}
    Set Global Variable    ${CHANGE_STOCK_PRICE19}
    Wait Until Page Contains Element    ${NAME19}
    ${FULL_COMPANY_NAME19}    Get Text    ${NAME19}
    Set Global Variable    ${FULL_COMPANY_NAME19}