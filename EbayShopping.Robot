*** Settings ***
Library  SeleniumLibrary
Library  WhiteLibrary
Resource  EbayKeywords.Robot


*** Test Cases ***
Shopping Test
    [Documentation]  Let's buy a wii remote
    [Tags]  Search robot
    # The robot searches Ebay in order to buy a wii remote
    Start Browser
    Search Item  ${search_item}
    Search results for  ${wanted_result}
    Close Browser

Search Button Verification
   [Documentation]  Confirm the existence of a search button
    [Tags]  Verify Search Button
    Start Browser
    Wait for searchbutton
    Close Browser

Search Field Verification
    [Documentation]  Confirm the existence of a search field
    [Tags]  Verify search field
    Start Browser
    Wait for searchbar
    Close Browser

