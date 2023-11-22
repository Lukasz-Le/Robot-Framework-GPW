*** Settings ***
Library    RPA.Browser.Selenium
Library    RPA.Excel.Files
Library    String
Library    RPA.PDF
Resource    ./PageObjects/KeyWordDefinitionsFiles/MainPage.robot
Resource    ./PageObjects/KeyWordDefinitionsFiles/CommonFunctionality.robot


*** Test Cases ***
WIG20
    MainPage.Open Main Page    https://www.gpw.pl
    MainPage.Page Cookies
    CommonFunctionality.Download Session Date
    CommonFunctionality.Create Excel
    CommonFunctionality.Create Rows
    CommonFunctionality.Organize Excel
    CommonFunctionality.Create PDF
    [Teardown]    Close Browser

   




    
