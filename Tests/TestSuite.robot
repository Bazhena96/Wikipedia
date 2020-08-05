*** Settings ***
Library   AppiumLibrary
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Open app and skip settings
    Open And Load Application
    Skip Settings
    AppiumLibrary.Close Application
User search the article
    Open And Load Application
    Skip Settings
    Search The Article
    AppiumLibrary.Close Application
User change settings of the article
    Open And Load Application
    Skip Settings
    Change Settings
    AppiumLibrary.Close Application
User change language settings
    Open And Load Application
    Skip Settings
    Language Settings
    AppiumLibrary.Close Application
User log into application
    Open And Load Application
    Skip Settings
    Log In
    AppiumLibrary.Close Application
User log out
    Open And Load Application
    Skip Settings
    Log Out
    AppiumLibrary.Close Application
User change the reading preferences
    Open And Load Application
    Skip Settings
    Reading Preferences
    AppiumLibrary.Close Application
User log into account and see a correct error message
    [Tags]   Negativ
    [Template]  Log Into Account And See A Correct Error Message
    &{correctUserNameIncorrectPassword}
    &{incorrectUsernameCorrectPassword}
    &{incorrectPasswordIncorrectUsername}
User create account and see a correct error message
    [Documentation]  User create account with invalid capture
    [Tags]  Negativ
    Open And Load Application
    Skip Settings
    Create Account
    Verify Error Message, When User Created Account With Invalid Capture
    AppiumLibrary.Close Application
User forgot password
    Open And Load Application
    Skip Settings
    Forgot Password
    AppiumLibrary.Close Application
User clear cached data
    Open And Load Application
    Skip Settings
    Clear Data Сached data
    AppiumLibrary.Close Application
User open the article and change front size of the article
    Open And Load Application
    Skip Settings
    Search The Article
    Open The Article
    Change Front Size
    AppiumLibrary.Close Application
User open the article and change languages of the article
    Open And Load Application
    Skip Settings
    Search The Article
    Open The Article
    Change Language
    AppiumLibrary.Close Application
User add article to save
    Open And Load Application
    Skip Settings
    Search The Article
    Open The Article
    Save Article
    AppiumLibrary.Close Application
User verify the location
    Open And Load Application
    Skip Settings
    Search The Location
    AppiumLibrary.Close Application
User close application
    Close All Applications


























