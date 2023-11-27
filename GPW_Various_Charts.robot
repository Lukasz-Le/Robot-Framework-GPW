*** Settings ***
Library    String
Library    RPA.Assistant
Library    RPA.Browser.Selenium
Resource    ./PageObjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/CommonFunctionality.robot


*** Test Cases ***
Various Charts
    MainPage.Open Main Page   https://www.gpw.pl
    MainPage.Page Cookies
    MainPage.Download Biggest turnover
    MainPage.Download WIG20 Companies
    MainPage.Download Logo
    MainPage.Download Top Gainers
    MainPage.Download Top Decliners
    CommonFunctionality.Close Page
    CommonFunctionality.Show Charts
    