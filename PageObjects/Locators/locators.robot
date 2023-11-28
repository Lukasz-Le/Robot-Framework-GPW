*** Variables ***
${ACCEPT_COOKIES}    css=.banner-actions-container #onetrust-accept-btn-handler
${SESSION_DATE}    css=section.mainContainer.padding-top-20 .grey
${FIRST_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(1) a
${SECOND_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(2) a
${THIRD_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(3) a
${FOURTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(4) a
${FIFTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(5) a
${SIXTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(6) a
${SEVENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(7) a
${EIGHTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(8) a
${NINTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(9) a
${TENTH__COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(10) a
${ELEVENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(11) a
${TWELFTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(12) a
${THIRTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(13) a
${FOURTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(14) a
${FIFTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(15) a
${SIXTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(16) a
${SEVENTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(17) a
${EIGHTEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(18) a
${NINETEENTH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(19) a
${TWENTIETH_COMPANY_LINK}    css=.mainContainer div.gpw_style div:nth-child(20) a
${BIGGEST_TURNOVER}     css=body>:nth-child(8) .row #akcje 
${LOGO}    css=.navbar-brand img  
${TOP_GAINERS}    css=.tab-pane#rynek-naj-rosnace
${CHANGE_TOP_DECLINERS}    css=a[href="#rynek-naj-spadaja"]
${TOP_DECLINERS}    css=.row.main-market-state .tab-content 
${WIG20_COMPANIES}    css=section.mainContainer.padding-top-20,padding-bottom-o.margin-bottom-0.bg_lightGrey
@{urls}   ${FIRST_COMPANY_LINK}    ${SECOND_COMPANY_LINK}    ${THIRD_COMPANY_LINK}    ${FOURTH_COMPANY_LINK}    ${FIFTH_COMPANY_LINK}
...    ${SIXTH_COMPANY_LINK}    ${SEVENTH_COMPANY_LINK}    ${EIGHTH_COMPANY_LINK}    ${NINTH_COMPANY_LINK}    ${TENTH__COMPANY_LINK}
...    ${ELEVENTH_COMPANY_LINK}    ${TWELFTH_COMPANY_LINK}    ${THIRTEENTH_COMPANY_LINK}    ${FOURTEENTH_COMPANY_LINK}    ${FIFTEENTH_COMPANY_LINK}
...    ${SIXTEENTH_COMPANY_LINK}    ${SEVENTEENTH_COMPANY_LINK}    ${EIGHTEENTH_COMPANY_LINK}    ${NINETEENTH_COMPANY_LINK}
...    ${TWENTIETH_COMPANY_LINK}
${PRICE}    css=.bg_grey .container .row .PaL .summary
${CHANGE}    css=.bg_grey .container .row .PaL b
${NAME}    css=#company-card-tabs .footable tbody tr:nth-child(6) td
${ANNOUNCEMENTS}    css=h4.header a[href="komunikaty"]
${SUBSTRING_SESSION_DATE}