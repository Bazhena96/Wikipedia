*** Settings ***
Library   AppiumLibrary
Resource  ../Resources/Variables.robot
*** Keywords ***
Open And Load Application
    AppiumLibrary.Open Application   http://localhost:4723/wd/hub    alias=myApp    platformName=iOS	    platformVersion=13.6    deviceName=iPhone 8     app=/Users/bazhenakashchuk/Desktop/Wikipedia.app
Skip Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Skip
    AppiumLibrary.Click Element    accessibility_id=Skip
Search The Article
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Search Wikipedia
    AppiumLibrary.Click Element  accessibility_id=Search Wikipedia
    AppiumLibrary.Input Text   accessibility_id=Search Wikipedia  ${Article}
    AppiumLibrary.Tap  Search
Change Settings
    AppiumLibrary.Wait Until Page Contains Element  xpath=(//XCUIElementTypeButton[@name="overflow"])[1]
    AppiumLibrary.Click Element  xpath=(//XCUIElementTypeButton[@name="overflow"])[1]
    AppiumLibrary.Wait Until Page Contains Element  id=Hide this card
    AppiumLibrary.Click Element  id=Hide this card
Language Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element  accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=My languages
    AppiumLibrary.Click Element  accessibility_id=My languages
Log In
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Log in
    AppiumLibrary.Click Element  accessibility_id=Log in
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter username
    AppiumLibrary.Click Element   accessibility_id=enter username
    AppiumLibrary.Input Text  accessibility_id= enter username   ${NAME}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter password
    AppiumLibrary.Click Element  accessibility_id=enter password
    AppiumLibrary.Input Text  accessibility_id=enter password   ${PASSWORD}
    AppiumLibrary.Wait Until Page Contains Element  xpath=//XCUIElementTypeButton[@name="Log in"]
    AppiumLibrary.Click Element  xpath=//XCUIElementTypeButton[@name="Log in"]
Log Out
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Bazhenka
    AppiumLibrary.Click Element     accessibility_id=Bazhenka
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Log out
    AppiumLibrary.Click Element  accessibility_id=Log out
Reading Preferences
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Reading preferences
    AppiumLibrary.Click Element   accessibility_id=Reading preferences
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Sepia
    AppiumLibrary.Click Element   accessibility_id=Sepia
Create Account
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Log in
    AppiumLibrary.Click Element   accessibility_id=Log in
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Don't have an account? Join Wikipedia.
    AppiumLibrary.Click Element   accessibility_id=Don't have an account? Join Wikipedia.
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter username
    AppiumLibrary.Click Element   accessibility_id=enter username
    AppiumLibrary.Input Text  accessibility_id=enter username  ${NameForCreation}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter password
    AppiumLibrary.Click Element   accessibility_id=enter password
    AppiumLibrary.Input Text  accessibility_id= enter password  ${PASSWORD}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=re-enter password
    AppiumLibrary.Click Element   accessibility_id=re-enter password
    AppiumLibrary.Input Text  accessibility_id=re-enter password  ${PASSWORD}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter email
    AppiumLibrary.Click Element   accessibility_id=enter email
    AppiumLibrary.Input Text  accessibility_id=enter email  ${EMAIL}
    AppiumLibrary.Click Element   accessibility_id=CAPTCHA text
    AppiumLibrary.Input Text  accessibility_id=CAPTCHA text    ROW
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Create your account
    AppiumLibrary.Click Element   accessibility_id=Create your account

Verify Error Message, When User Created Account With Invalid Capture
    Wait Until Page Countains  ${ErrorMessage_InvalidCapture}
Log Into Account And See A Correct Error Message
    [Arguments]  &{Credentions}
    Open And Load Application
    Skip Settings
    Log Into Account With Invalid Data  &{Credentions}
    Verify Error Message, When User Log Into Account With Invalid Data  &{Credentions}
    AppiumLibrary.Close Application
Log Into Account With Invalid Data
    [Arguments]  &{Credentions}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Log in
    AppiumLibrary.Click Element  accessibility_id=Log in
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter username
    AppiumLibrary.Click Element   accessibility_id=enter username
    AppiumLibrary.Input Text  accessibility_id= enter username   ${Credentions}[UserName]
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter password
    AppiumLibrary.Click Element  accessibility_id=enter password
    AppiumLibrary.Input Text  accessibility_id=enter password   ${Credentions}[UserPassword]
    AppiumLibrary.Wait Until Page Contains Element  xpath=//XCUIElementTypeButton[@name="Log in"]
    AppiumLibrary.Click Element  xpath=//XCUIElementTypeButton[@name="Log in"]
Verify Error Message, When User Log Into Account With Invalid Data
    [Arguments]  &{Credentions}
    Wait Until Page Contains  ${Credentions}[ErrorMessage]
Forgot Password
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Log in
    AppiumLibrary.Click Element  accessibility_id=Log in
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Forgot your password?
    AppiumLibrary.Click Element  accessibility_id=Forgot your password?
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=enter username
    AppiumLibrary.Click Element  accessibility_id=enter username
    AppiumLibrary.Input Text  accessibility_id=enter username  ${NAME}
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Reset
    AppiumLibrary.Click Element  accessibility_id=Reset
Clear Data cached data
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Settings
    AppiumLibrary.Click Element   accessibility_id=Settings
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Clear cached data
    AppiumLibrary.Click Element  accessibility_id=Clear cached data
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Clear cache
    AppiumLibrary.Click Element  accessibility_id=Clear cache
Open The Article
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=Paris Hilton
    AppiumLibrary.Click Element   accessibility_id=Paris Hilton
Change Front Size
    AppiumLibrary.Wait Until Page Contains Element  accessibility_id=font size
    AppiumLibrary.Click Element   accessibility_id=font size
    ${Size1}  Get Element Size   accessibility_id=Paris Hilton
    AppiumLibrary.Tap    xpath=(//XCUIElementTypeOther[@name="Text size slider"])[2]/XCUIElementTypeOther  50  20
    ${Size2}  Get Element Size   accessibility_id=Paris Hilton
    Should Not Be Equal  ${Size1}  ${Size2}
Change Language
    



















































