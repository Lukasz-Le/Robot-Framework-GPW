*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00    
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Resource    ../Locators/locators.robot

*** Keywords ***
Download Session Date
    Wait Until Page Contains Element    ${SESSION_DATE} 
    ${DATE}   Get Text    ${SESSION_DATE} 
    ${SUBSTRING_SESSION_DATE} =    Get Substring    ${DATE}    24    34
    Set Global Variable   ${SUBSTRING_SESSION_DATE}

Select First Company
    Wait Until Element Is Visible    ${FIRST_COMPANY}
    Click Link    ${FIRST_COMPANY_LINK} 

Select Second Company
    Wait Until Element Is Visible    ${FIRST_COMPANY}
    Click Link    ${SECOND_COMPANY_LINK}     

Select Third Company
    Wait Until Element Is Visible    ${THIRD_COMPANY} 
    Click Link    ${THIRD_COMPANY_LINK} 

Select Fourth Company
    Wait Until Element Is Visible    ${FOURTH_COMPANY}
    Click Link    ${FOURTH_COMPANY_LINK} 

Select Fifth Company
    Wait Until Element Is Visible    ${FIFTH_COMPANY}
    Click Link    ${FIFTH_COMPANY_LINK}     

Select Sixth Company
    Wait Until Element Is Visible    ${SIXTH_COMPANY} 
    Click Link    ${SIXTH_COMPANY_LINK} 

Select Seventh Company
    Wait Until Element Is Visible    ${SEVENTH_COMPANY}
    Click Link    ${SEVENTH_COMPANY_LINK}     

Select Eighth Company
    Wait Until Element Is Visible    ${EIGHTH_COMPANY} 
    Click Link    ${EIGHTH__COMPANY_LINK} 

Select Ninth Company
    Wait Until Element Is Visible    ${NINTH_COMPANY}
    Click Link    ${NINTH_COMPANY_LINK} 

Select Tenth Company
    Wait Until Element Is Visible    ${TENTH_COMPANY}
    Click Link    ${TENTH_COMPANY_LINK}     

Select Eleventh Company
    Wait Until Element Is Visible    ${ELEVENTH_COMPANY} 
    Click Link    ${ELEVENTH_COMPANY_LINK} 

Select Twelfth Company
    Wait Until Element Is Visible    ${TWELFTH_COMPANY}
    Click Link    ${TWELFTH_COMPANY_LINK} 

Select Thirteenth Company
    Wait Until Element Is Visible    ${THIRTEENTH_COMPANY}
    Click Link    ${THIRTEENTH_COMPANY_LINK}     

Select Fourteenth Company
    Wait Until Element Is Visible    ${FOURTEENTH_COMPANY} 
    Click Link    ${FOURTEENTH_COMPANY_LINK} 

Select Fifteenth Company
    Wait Until Element Is Visible    ${FIFTEENTH_COMPANY} 
    Click Link    ${FIFTEENTH_COMPANY_LINK} 

Select Sixteenth Company
    Wait Until Element Is Visible    ${SIXTEENTH_COMPANY}
    Click Link    ${SIXTEENTH_COMPANY_LINK} 

Select Seventeenth Company
    Wait Until Element Is Visible    ${SEVENTEENTH_COMPANY}
    Click Link    ${SEVENTEENTH_COMPANY_LINK}     

Select Eighteenth Company
    Wait Until Element Is Visible    ${EIGHTEENTH_COMPANY} 
    Click Link    ${EIGHTEENTH_COMPANY_LINK} 

Select Nineteenth Company
    Wait Until Element Is Visible    ${NINETEENTH_COMPANY}
    Click Link    ${NINETEENTH_COMPANY_LINK}     

Select Twentieth Company
    Wait Until Element Is Visible    ${TWENTIETH_COMPANY} 
    Click Link    ${TWENTIETH_COMPANY_LINK} 

Download Biggest turnover
    RPA.Browser.Selenium.Capture Element Screenshot      ${BIGGEST_TURNOVER}   biggest_turnover.png

Download Logo
    RPA.Browser.Selenium.Capture Element Screenshot      ${LOGO}    logo.png

Download Top Gainers
    RPA.Browser.Selenium.Capture Element Screenshot    ${TOP_GAINERS}    top_gainers.png

Download Top Decliners
    RPA.Browser.Selenium.Click Element    ${CHANGE_TOP_DECLINERS}
    RPA.Browser.Selenium.Capture Element Screenshot     ${TOP_DECLINERS}    top_decliners.png
