*** Settings ***
Library    Collections
Library    RPA.Excel.Files
Library    RPA.Assistant
Library    String
Library    RPA.Browser.Selenium
Library    RPA.PDF
Resource    ./MainPage.robot


*** Keywords ***
Go Back Page   
    RPA.Browser.Selenium.Go Back

Download Session Date
    RPA.Browser.Selenium.Wait Until Page Contains Element    ${SESSION_DATE} 
    ${DATE}  RPA.Browser.Selenium.Get Text    ${SESSION_DATE} 
    ${SUBSTRING_SESSION_DATE} =    Get Substring    ${DATE}    24    34
    Set Global Variable   ${SUBSTRING_SESSION_DATE}   

Open Subpage
    [Arguments]    ${url}
    RPA.Browser.Selenium.Wait Until Element Is Visible    ${url}
    RPA.Browser.Selenium.Click Link    ${url}
    
Create Rows
     FOR    ${ROW_NUMBER}    ${url}    IN ENUMERATE   @{urls}
        Open Subpage    ${url} 
        RPA.Browser.Selenium.Wait Until Page Contains Element    ${PRICE} 
        ${STOCK_PRICE}    RPA.Browser.Selenium.Get Text    ${PRICE}
        RPA.Browser.Selenium.Wait Until Page Contains Element    ${CHANGE}
        ${CHANGE_STOCK_PRICE}    RPA.Browser.Selenium.Get Text    ${CHANGE}
        RPA.Browser.Selenium.Wait Until Page Contains Element    ${NAME}
        ${FULL_COMPANY_NAME}    RPA.Browser.Selenium.Get Text    ${NAME}
        ${ROW_Data}=    Create Dictionary    lp.= ${ROW_NUMBER+1}  nazwa firmy=${FULL_COMPANY_NAME}   wartość akcji=${STOCK_PRICE} zł   zmiana=${CHANGE_STOCK_PRICE} 
        Add Row to File    ${ROW_Data}    ${ROW_NUMBER+1}
        Go Back Page  
    END
            
Add Row to File
    [Arguments]    ${ROW_Data}    ${ROW_NUMBER}
    RPA.Excel.Files.Open Workbook    test.xlsx
    Append Rows To Worksheet     content=${ROW_Data}        header=${True}
    Save Workbook    test.xlsx
    
Create Excel
    Create Workbook     test.xlsx
    Rename worksheet    Sheet     ${SUBSTRING_SESSION_DATE}
    Save Workbook

Organize Excel
    RPA.Excel.Files.Open Workbook    test.xlsx
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

Create PDF
    RPA.Browser.Selenium.Wait Until Element Is Visible    ${TWENTIETH_COMPANY_LINK}
    Run Keyword and Ignore Error    RPA.Browser.Selenium.Scroll Element Into View    ${ANNOUNCEMENTS}
    RPA.Browser.Selenium.Set Browser Implicit Wait   5s
    RPA.Browser.Selenium.Capture Element Screenshot    ${WIG20_COMPANIES}     ${OUTPUT_DIR}${/}1.png
    ${FILES}    Create List    ${OUTPUT_DIR}${/}1.png
    RPA.PDF.Add Files To Pdf    ${FILES}    target_document=wig20.pdf


Close Page
    RPA.Browser.Selenium.Close Browser

Show Charts
    Add Image    ${OUTPUT_DIR}${/}logo.png
    Add heading   Notowania Giełdowe
    Add drop-down     
    ...    name=user_type
    ...    options=Najwyższe obroty,Najmocniej rosnące,Najmocniej spadające, Notowania WIG20
    ...    default=Najwyższe obroty
    ...    label=Wybierz z listy rozwijanej
    Add submit buttons    buttons=Zamknij,Dalej
    ${result}=      Run dialog    title=GPW
    IF    $result.submit =="Dalej" and $result.user_type =="Najwyższe obroty"
        Add Image    ${OUTPUT_DIR}${/}logo.png
        Add Heading    Notowania Giełdowe    Medium
        Add Image    ${OUTPUT_DIR}${/}biggest_turnover.png
        Add Submit Buttons   Zamknij,Powrót
        ${result}=    Run Dialog    title=GPW
            IF    $result.submit =="Powrót"
            Show Charts
            END
    ELSE IF    $result.submit =="Dalej" and $result.user_type =="Najmocniej rosnące"
        Add Image    ${OUTPUT_DIR}${/}logo.png
        Add Heading    Notowania Giełdowe    Medium
        Add Image    ${OUTPUT_DIR}${/}top_gainers.png
        Add Submit Buttons   Zamknij,Powrót
        ${result}=    Run Dialog    title=GPW
            IF    $result.submit =="Powrót"
            Show Charts
            END
    ELSE IF     $result.submit =="Dalej" and $result.user_type =="Najmocniej spadające"
        Add Image    ${OUTPUT_DIR}${/}logo.png
        Add Heading    "Najmocniej spadające spółki GPW"    Medium
        Add Image    ${OUTPUT_DIR}${/}top_decliners.png
        Add Submit Buttons   Zamknij,Powrót
                ${result}=    Run Dialog    title=GPW
            IF    $result.submit =="Powrót"
            Show Charts
            END
    ELSE IF    $result.submit =="Dalej" and $result.user_type =="Notowania WIG20"        
            Add Image    ${OUTPUT_DIR}${/}logo.png
            Add Heading    "Notowania WIG20"    Medium
            Add Image    ${OUTPUT_DIR}${/}WIG20.png
            Add Submit Buttons   Zamknij,Powrót
            ${result}=    Run Dialog    height=768   width=1366
                IF    $result.submit =="Powrót"
                Show Charts
                END
    END
    
    