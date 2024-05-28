*** Settings ***
Resource        ../Library/Sign_in/sign_in.robot
Resource        ../Library/Book_Flight/bookFlight.robot
Resource        ../Library/Search/search.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Variables ***
${VALID_USERNAME}              support@ngendigital.com
${VALID_PASSWORD}              abc123
${INVALID_USERNAME}            support@ngendigital.comMMM
${INVALID_PASSWORD}            abc123333
${VALID_NUMBER}                DA935


*** Test Cases ***
Sign In Successfull
    Verify Home Screen Appears
    Click Login Button
    Input Username            username=${VALID_USERNAME}
    Input User Password        password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Succes Login

Booking Flight
    Verify Home Screen Appears
    Click Login Button
    Input Username            username=${VALID_USERNAME}
    Input User Password        password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Succes Login
    Click Element Booking
    Click Spinner From
    Select Country From        
    Click Spinner To 
    Select Country To        
    Click Spinner Class
    Select Class
    Radio Button
    Click Book Button
    Click Price Button
    Click Confirm Button

Search Flight
  Verify Home Screen Appears
    Click Login Button
    Input Username            username=${VALID_USERNAME}
    Input User Password        password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Succes Login
    Click Element search
    Input Number               number=${VALID_NUMBER}
    Click Button Search
   
    
   