*** Settings ***
Library    Selenium2Library     
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    RPA.Assistant
Library    RPA.Browser.Selenium
Resource    ./PageObjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/CommonFunctionality.robot


*** Keywords ***
Open Page
    [Arguments]    ${ADRESS}  #${BROWSER}         
    RPA.Browser.Selenium.Open Available Browser     ${ADRESS}    maximized=${True}    browser_selection=chrome    
    #Maximize Browser Window
    #Set Selenium Timeout    60s



*** Test Cases ***
Various Charts
    Open Page   https://www.gpw.pl    #chrome
    CommonFunctionality.Page Cookies
    MainPage.Download Biggest turnover
    MainPage.Download Logo
    MainPage.Download Top Gainers
    MainPage.Download Top Decliners
    CommonFunctionality.Close Page
    CommonFunctionality.Show Charts
    