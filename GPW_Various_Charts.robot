*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00   
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    RPA.Assistant
Resource    ./PageObjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/CommonFunctionality.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/FirstCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/SecondCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/ThirdCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/FourthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/FifthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/SixthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/SeventhCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/EighthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/NinthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/TenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/EleventhCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/TwelfthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/ThirteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/FourteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/FifteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/SixteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/SeventeenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/EighteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/NineteenthCompanyPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/TwentiethCompanyPage.robot

*** Variables ***


*** Keywords ***
Open Page
    [Arguments]    ${ADRESS}  ${BROWSER}         
    Open Browser  ${ADRESS}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    60s



*** Test Cases ***
Various Charts
    Open Page   https://www.gpw.pl    chrome
    CommonFunctionality.Page Cookies
    MainPage.Download Biggest turnover
    MainPage.Download Logo
    MainPage.Download Top Gainers
    MainPage.Download Top Decliners
    CommonFunctionality.Close Page
    CommonFunctionality.Show Charts
    