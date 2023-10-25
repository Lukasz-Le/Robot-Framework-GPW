*** Settings ***
Library    Selenium2Library    page_load_timeout=25:00    
Library    OperatingSystem
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    RPA.Assistant
Library    String
Resource    ./MainPage.robot
Resource    ./FirstCompanyPage.robot
Resource    ./SecondCompanyPage.robot
Resource    ./ThirdCompanyPage.robot
Resource    ./FourthCompanyPage.robot
Resource    ./FifthCompanyPage.robot
Resource    ./SixthCompanyPage.robot
Resource    ./SeventhCompanyPage.robot
Resource    ./EighthCompanyPage.robot
Resource    ./NinthCompanyPage.robot
Resource    ./TenthCompanyPage.robot
Resource    ./EleventhCompanyPage.robot
Resource    ./TwelfthCompanyPage.robot
Resource    ./ThirteenthCompanyPage.robot
Resource    ./FourteenthCompanyPage.robot
Resource    ./FifteenthCompanyPage.robot
Resource    ./SixteenthCompanyPage.robot
Resource    ./SeventeenthCompanyPage.robot
Resource    ./EighteenthCompanyPage.robot
Resource    ./NineteenthCompanyPage.robot
Resource    ./TwentiethCompanyPage.robot


*** Keywords ***
Page Cookies
    Wait Until Element Is Visible    ${ACCEPT_COOKIES}    10s
    Click Button    ${ACCEPT_COOKIES}

Go Back Page   
    Go Back

Create Excel File
    Create Workbook     D:/programowanie/Robot/GPW/notowania.xlsx
    ${ROW1}=    Create Dictionary    lp.=1    nazwa firmy=${FULL_COMPANY_NAME1}    wartość akcji= ${STOCK_PRICE1} zł   zmiana=${CHANGE_STOCK_PRICE1}
    ${ROW2}=    Create Dictionary    lp.=2    nazwa firmy=${FULL_COMPANY_NAME2}    wartość akcji=${STOCK_PRICE2} zł    zmiana=${CHANGE_STOCK_PRICE2}
    ${ROW3}=    Create Dictionary    lp.=3    nazwa firmy=${FULL_COMPANY_NAME3}    wartość akcji=${STOCK_PRICE3} zł    zmiana=${CHANGE_STOCK_PRICE3}
    ${ROW4}=    Create Dictionary    lp.=4    nazwa firmy=${FULL_COMPANY_NAME4}    wartość akcji=${STOCK_PRICE4} zł    zmiana=${CHANGE_STOCK_PRICE4}
    ${ROW5}=    Create Dictionary    lp.=5    nazwa firmy=${FULL_COMPANY_NAME5}    wartość akcji=${STOCK_PRICE5} zł    zmiana=${CHANGE_STOCK_PRICE5}
    ${ROW6}=    Create Dictionary    lp.=6    nazwa firmy=${FULL_COMPANY_NAME6}    wartość akcji=${STOCK_PRICE6} zł    zmiana=${CHANGE_STOCK_PRICE6}
    ${ROW7}=    Create Dictionary    lp.=7    nazwa firmy=${FULL_COMPANY_NAME7}    wartość akcji=${STOCK_PRICE7} zł    zmiana=${CHANGE_STOCK_PRICE7}
    ${ROW8}=    Create Dictionary    lp.=8    nazwa firmy=${FULL_COMPANY_NAME8}    wartość akcji=${STOCK_PRICE8} zł    zmiana=${CHANGE_STOCK_PRICE8}
    ${ROW9}=    Create Dictionary    lp.=9    nazwa firmy=${FULL_COMPANY_NAME9}    wartość akcji=${STOCK_PRICE9} zł    zmiana=${CHANGE_STOCK_PRICE9}
    ${ROW10}=    Create Dictionary    lp.=10    nazwa firmy=${FULL_COMPANY_NAME10}    wartość akcji=${STOCK_PRICE10} zł    zmiana=${CHANGE_STOCK_PRICE10}
    ${ROW11}=    Create Dictionary    lp.=11    nazwa firmy=${FULL_COMPANY_NAME11}    wartość akcji=${STOCK_PRICE11} zł    zmiana=${CHANGE_STOCK_PRICE11}
    ${ROW12}=    Create Dictionary    lp.=12    nazwa firmy=${FULL_COMPANY_NAME12}    wartość akcji=${STOCK_PRICE12} zł    zmiana=${CHANGE_STOCK_PRICE12}
    ${ROW13}=    Create Dictionary    lp.=13    nazwa firmy=${FULL_COMPANY_NAME13}    wartość akcji=${STOCK_PRICE13} zł    zmiana=${CHANGE_STOCK_PRICE13}
    ${ROW14}=    Create Dictionary    lp.=14    nazwa firmy=${FULL_COMPANY_NAME14}    wartość akcji=${STOCK_PRICE14} zł    zmiana=${CHANGE_STOCK_PRICE14}
    ${ROW15}=    Create Dictionary    lp.=15    nazwa firmy=${FULL_COMPANY_NAME15}    wartość akcji=${STOCK_PRICE15} zł    zmiana=${CHANGE_STOCK_PRICE15}
    ${ROW16}=    Create Dictionary    lp.=16    nazwa firmy=${FULL_COMPANY_NAME16}    wartość akcji=${STOCK_PRICE16} zł    zmiana=${CHANGE_STOCK_PRICE16}
    ${ROW17}=    Create Dictionary    lp.=17    nazwa firmy=${FULL_COMPANY_NAME17}    wartość akcji=${STOCK_PRICE17} zł    zmiana=${CHANGE_STOCK_PRICE17}
    ${ROW18}=    Create Dictionary    lp.=18    nazwa firmy=${FULL_COMPANY_NAME18}    wartość akcji=${STOCK_PRICE18} zł    zmiana=${CHANGE_STOCK_PRICE18}
    ${ROW19}=    Create Dictionary    lp.=19    nazwa firmy=${FULL_COMPANY_NAME19}    wartość akcji=${STOCK_PRICE19} zł    zmiana=${CHANGE_STOCK_PRICE19}
    ${ROW20}=    Create Dictionary    lp.=20    nazwa firmy=${FULL_COMPANY_NAME20}    wartość akcji=${STOCK_PRICE20} zł    zmiana=${CHANGE_STOCK_PRICE20}
    @{Worksheet_Data}=    Create List    ${ROW1}    ${ROW2}     ${ROW3}    ${ROW4}
    ...    ${ROW5}    ${ROW6}     ${ROW7}    ${ROW8}    ${ROW9}
    ...    ${ROW10}    ${ROW11}     ${ROW12}    ${ROW13}    ${ROW14}
    ...    ${ROW15}    ${ROW16}     ${ROW17}    ${ROW18}    ${ROW19}    ${ROW20}  
    Rename worksheet    Sheet     ${SUBSTRING_SESSION_DATE}
    Append Rows To Worksheet    content=@{Worksheet_Data}    name=${SUBSTRING_SESSION_DATE}   header=True
    Insert Columns Before    column=A
    Insert Rows Before    row=1
    Set Styles    B2:B22   align_horizontal=left
    Auto Size Columns   start_column=B    width=4
    Set Styles    C2:C22   align_horizontal=left
    Auto Size Columns   start_column=C    width=60  
    Set Styles    D2:D22   align_horizontal=center 
    Set Styles    E2:E22   align_horizontal=center
    Auto Size Columns    D    E
    Save Workbook

Close Page
    Close Browser

Show Charts
    Add Image    D:/programowanie/Robot/GPW/Screenshots/logo.png
    Add heading   Notowania Giełdowe
    Add drop-down     
    ...    name=user_type
    ...    options=Najwyższe obroty,Najmocniej rosnące,Najmocniej spadające
    ...    default=Najwyższe obroty
    ...    label=Wybierz z listy rozwijanej
    Add submit buttons    buttons=Dalej
    ${result}=      Run dialog
     
    
    IF   $result.user_type == "Najwyższe obroty"
        Add Image    D:/programowanie/Robot/GPW/Screenshots/logo.png
        Add Heading    Notowania Giełdowe    Medium
        Add Image    url_or_path=D:/programowanie/Robot/GPW/Screenshots/biggest_turnover.png
        Add Submit Buttons   Zamknij,Powrót
        ${result}=    Run Dialog
        IF    $result.submit =="Powrót"
            Show Charts
        END
    ELSE IF    $result.user_type =="Najmocniej rosnące"
        Add Image    D:/programowanie/Robot/GPW/Screenshots/logo.png
        Add Heading    Notowania Giełdowe    Medium
        Add Image    url_or_path=D:/programowanie/Robot/GPW/Screenshots/top_gainers.png
        Add Submit Buttons   Zamknij,Powrót
        ${result}=    Run Dialog
        IF    $result.submit =="Powrót"
            Show Charts
        END
    ELSE
        Add Image    D:/programowanie/Robot/GPW/Screenshots/logo.png
        Add Heading    "Najmocniej spadające spółki GPW"    Medium
        Add Image    url_or_path=D:/programowanie/Robot/GPW/Screenshots/top_decliners.png
        Add Submit Buttons   Zamknij,Powrót
        ${result}=    Run Dialog
        IF    $result.submit =="Powrót"
            Show Charts
        END
    END
    