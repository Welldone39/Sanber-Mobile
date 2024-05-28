*** Settings ***
Documentation            Segala hal yang berkaitan dengan Sign In
Variables                sign-page-locators.yml
Resource                  ../base.robot

*** Keywords ***

Verify Home Screen Appears
     Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Login Button
    Click Element                 locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]


Input Username
    [Arguments]                       ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}       text=${username}


Input User Password
    [Arguments]                       ${password}
    Input Text                       locator=${password_input}        text=${password}

Click Sign In Button
    Click Element                  locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Succes Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]


