*** Settings ***
Documentation           Segala Hal Yang Berkaitan Dengan Booking
Resource                ../base.robot
Variables               book-page-locators.yml

*** Keywords ***
Click Element Booking
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]


Click Spinner From
    Wait Until Element Is Visible    ${spinner_from}
    Click Element                    ${spinner_from}

Select Country From
    Wait Until Element Is Visible    locator=${country_name_from}
    Click Element                    locator=${country_name_from}

Click Spinner To 
    Wait Until Element Is Visible    locator=${spinner_to}
    Click Element                    locator=${spinner_to}

Select Country To
     Wait Until Element Is Visible     locator=${country_name_to}
    Click Element                     locator=${country_name_to}

Click Spinner Class
    Wait Until Element Is Visible    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]

Select Class
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

    
Radio Button
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

Click Book Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click Price Button
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price5"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price5"]        

Click Confirm Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Booking Screen
    Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup