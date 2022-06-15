*** Settings ***
Library  SeleniumLibrary
Library  WhiteLibrary

*** Variables ***
${ebay_url}  https://www.ebay.ie/
${search_engine}  chrome
${search_item}  "wii remote"
${chrome_driver}  "C:/ChromeDriver/chromedriver.exe"
${first_result}  //*[@id="srp-river-results"]/ul/li[1]/div/div[2]
${wanted_result}  Wii

*** Keywords ***
Start Browser
     Open Browser  ${ebay_url}  ${search_engine}  ${chrome_driver}

Search Item
    [Arguments]  ${item_to_search}
    Element Should Be Visible  gh-ac-box
    Click Element  gh-ac-box
    Input Text  gh-ac  ${item_to_search}
    Click Element  gh-btn

Search results for
    [Arguments]  ${contained_word}
    Element Should Contain  ${first_result}  ${contained_word}

Wait for searchbar
    Wait Until Element Is Visible  //*[@id="gh-ac"]  timeout=60

Wait for searchbutton
     Wait Until Element Is Visible  gh-btn  timeout=60
