*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00   
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
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
Gielda
    Open Page    https://www.gpw.pl    chrome
    CommonFunctionality.Page Cookies
    MainPage.Download Session Date
    MainPage.Select First Company
    FirstCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Second Company
    SecondCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Third Company
    ThirdCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Fourth Company
    FourthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Fifth Company
    FifthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Sixth Company
    SixthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Seventh Company
    SeventhCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Eighth Company
    EighthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Ninth Company
    NinthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Tenth Company
    TenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Eleventh Company
    EleventhCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Twelfth Company
    TwelfthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Thirteenth Company
    ThirteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Fourteenth Company
    FourteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Fifteenth Company
    FifteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Sixteenth Company
    SixteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Seventeenth Company
    SeventeenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Eighteenth Company
    EighteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Nineteenth Company
    NineteenthCompanyPage.Download Company Data
    CommonFunctionality.Go Back Page
    MainPage.Select Twentieth Company
    TwentiethCompanyPage.Download Company Data
    CommonFunctionality.Create Excel File
    CommonFunctionality.Close Page

   




    
