*** Settings ***
Library    RPA.Browser.Selenium
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    RPA.HTTP
Library    String
Resource    ../Locators/locators.robot


*** Keywords ***
Open Main Page
    [Arguments]    ${ADRESS}       
    RPA.Browser.Selenium.Open Available Browser     ${ADRESS}    maximized=${True}    browser_selection=chrome
    RPA.Browser.Selenium.Set Selenium Page Load Timeout    value=30min

Page Cookies
    RPA.Browser.Selenium.Wait Until Element Is Visible    ${ACCEPT_COOKIES}   timeout=10s
    RPA.Browser.Selenium.Click Button    ${ACCEPT_COOKIES}

Download Session Date
    RPA.Browser.Selenium.Wait Until Page Contains Element    ${SESSION_DATE} 
    ${DATE}  RPA.Browser.Selenium.Get Text    ${SESSION_DATE} 
    ${SUBSTRING_SESSION_DATE} =    Get Substring    ${DATE}    24    34
    Set Global Variable   ${SUBSTRING_SESSION_DATE}

Download Biggest turnover
    RPA.Browser.Selenium.Capture Element Screenshot      ${BIGGEST_TURNOVER}   biggest_turnover.png

Download WIG20 Companies
    RPA.Browser.Selenium.Capture Element Screenshot      ${WIG20_COMPANIES}   WIG20.png

Download Logo
    RPA.Browser.Selenium.Capture Element Screenshot      ${LOGO}    logo.png

Download Top Gainers
    RPA.Browser.Selenium.Capture Element Screenshot    ${TOP_GAINERS}    top_gainers.png

Download Top Decliners
    RPA.Browser.Selenium.Click Element    ${CHANGE_TOP_DECLINERS}
    RPA.Browser.Selenium.Capture Element Screenshot     ${TOP_DECLINERS}    top_decliners.png
