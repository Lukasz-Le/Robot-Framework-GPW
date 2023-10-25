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
    Wait Until Page Contains Element    ${PRICE9} 
    ${STOCK_PRICE9}    Get Text    ${PRICE9}
    Set Global Variable    ${STOCK_PRICE9}
    Wait Until Page Contains Element    ${CHANGE9}
    ${CHANGE_STOCK_PRICE9}    Get Text    ${CHANGE9}
    Set Global Variable    ${CHANGE_STOCK_PRICE9} 
    Wait Until Page Contains Element    ${NAME9}
    ${FULL_COMPANY_NAME9}    Get Text    ${NAME9}
    Set Global Variable    ${FULL_COMPANY_NAME9}