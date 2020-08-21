*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Variables.robot
*** Keywords ***
Open And Load Application
    Open Application   http://localhost:4723/wd/hub    alias=myApp    platformName=iOS	    platformVersion=13.6    deviceName=iPhone 8     app=/Users/bazhenakashchuk/Desktop/Wikipedia.app
Skip Settings
    Wait Until Page Contains Element  accessibility_id=Skip
    Click Element  accessibility_id=Skip
Load Appliacation And Skip Settings
    Open And Load Application
    Skip Settings
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Search The Article
    [Arguments]  ${article}
    Wait And Click  accessibility_id=Search Wikipedia
    Input Text  accessibility_id=Search Wikipedia  ${article}
    Tap  Search
Change Settings
    Wait And Click  xpath=(//XCUIElementTypeButton[@name="overflow"])[1]
    Wait And Click  id=Hide this card
Language Settings
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=My languages
Log In
    [Arguments]  ${name}  ${password}
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Log in
    Wait And Click  accessibility_id=enter username
    Input Text  accessibility_id= enter username  ${name}
    Wait And Click  accessibility_id=enter password
    Input Text  accessibility_id=enter password  ${password}
    Wait And Click  xpath=//XCUIElementTypeButton[@name="Log in"]
Log Out
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Bazhenka
    Wait And Click  accessibility_id=Log out
Reading Preferences
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Reading preferences
    Wait And Click  accessibility_id=Sepia
Create Account
    [Arguments]  ${name for creation}  ${password}  ${email}
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Log in
    Wait And Click  accessibility_id=Don't have an account? Join Wikipedia.
    Wait And Click  accessibility_id=enter username
    Input Text  accessibility_id=enter username  ${name for creation}
    Wait And Click  accessibility_id=enter password
    Input Text  accessibility_id= enter password  ${password}
    Wait And Click  accessibility_id=re-enter password
    Input Text  accessibility_id=re-enter password  ${password}
    Wait And Click  accessibility_id=enter email
    Input Text  accessibility_id=enter email  ${email}
    Wait And Click   accessibility_id=CAPTCHA text
    Input Text  accessibility_id=CAPTCHA text    ROW
    Wait And Click  accessibility_id=Create your account
Verify Error Message, When User Created Account With Invalid Capture
    Wait Until Page Contains  invalid CAPTCHA
Log Into Account And See A Correct Error Message
    [Arguments]  &{credentials}
    Open And Load Application
    Skip Settings
    Log Into Account With Invalid Data  &{credentials}
    Verify Error Message, When User Log Into Account With Invalid Data  &{credentials}
    Close Application
Log Into Account With Invalid Data
    [Arguments]  &{credentials}
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Log in
    Wait And Click  accessibility_id=enter username
    Input Text  accessibility_id= enter username  ${credentials}[UserName]
    Wait And Click  accessibility_id=enter password
    Input Text  accessibility_id=enter password  ${credentials}[UserPassword]
    Wait And Click  xpath=//XCUIElementTypeButton[@name="Log in"]
Verify Error Message, When User Log Into Account With Invalid Data
    [Arguments]  &{credentials}
    Wait Until Page Contains  ${credentials}[ErrorMessage]
Forgot Password
    [Arguments]  ${name}
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Log in
    Wait And Click  accessibility_id=Forgot your password?
    Wait And Click  accessibility_id=enter username
    Input Text  accessibility_id=enter username  ${name}
    Wait And Click  accessibility_id=Reset
Clear Data Сached data
    Wait And Click  accessibility_id=Settings
    Wait And Click  accessibility_id=Clear cached data
    Wait And Click  accessibility_id=Clear cache
Open The Article
    Wait And Click  accessibility_id=Paris Hilton
Change Front Size
    Wait And Click  accessibility_id=font size
    ${size1}  Get Element Size   accessibility_id=Paris Hilton
    Tap  xpath=(//XCUIElementTypeOther[@name="Text size slider"])[2]/XCUIElementTypeOther  50  20
    ${size2}  Get Element Size   accessibility_id=Paris Hilton
    Should Not Be Equal  ${size1}  ${size2}
Change Language
    [Documentation]  ENG to RUS
    Wait And Click  accessibility_id=Change language
    Wait And Click  accessibility_id=Русский
    Set Appium Timeout  10
    Page Should Contain Element  accessibility_id=Хилтон, Пэрис
Save Article
    Wait And Click  accessibility_id=Save for later
    Wait And Click  accessibility_id=Back
    Wait And Click  accessibility_id=Cancel
    Wait And Click  accessibility_id=Saved
    Wait And Click  accessibility_id=Close
    Wait Until Page Contains   Paris Hilton
Search The Location
    [Arguments]  ${location}
    Wait And Click  accessibility_id=Places
    Wait And Click  accessibility_id=Enable location
    Wait And Click  accessibility_id=Allow While Using App
    Wait And Click  accessibility_id=Search Places
    Input Text  accessibility_id=Search Places  ${location}
    Tap  Search



















































