*** Settings ***
Documentation           Segala Hal Yang Berkaitan Dengan Search
Resource                ../base.robot
Variables                search-page-locators.yml

*** Keywords ***

Click Element search
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Input Number
    [Arguments]                      ${number}
    Wait Until Element Is Visible    locator=${input_number}
    Input Text                       locator=${input_number}    text=${number}

Click Button Search
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

