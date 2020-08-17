*** Settings ***
Library   AppiumLibrary
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Open app and skip settings
    Open And Load Application
    Skip Settings
    Close Application
User search the article
    Open And Load Application
    Skip Settings
    Search The Article  Paris Hilton
    Close Application
User change settings of the article
    Open And Load Application
    Skip Settings
    Change Settings
    Close Application
User change language settings
    Open And Load Application
    Skip Settings
    Language Settings
    Close Application
User log in to application
    Open And Load Application
    Skip Settings
    Log In  Bazhenka  change13
    Close Application
User log out
    Open And Load Application
    Skip Settings
    Log Out
    Close Application
User change the reading preferences
    Open And Load Application
    Skip Settings
    Reading Preferences
    Close Application
User log in to account and see a correct error message
    [Tags]   Negativ
    [Template]  Log Into Account And See A Correct Error Message
    &{Correct username but incorrect password}
    &{Incorrect username but correct password}
    &{Incorrect password and incorrect username}
User create account and see a correct error message
    [Documentation]  User create account with invalid capture
    [Tags]  Negativ
    Open And Load Application
    Skip Settings
    Create Account  testname89090023  change13  bazhenkak@gmail.com
    Verify Error Message, When User Created Account With Invalid Capture
    Close Application
User forgot password
    Open And Load Application
    Skip Settings
    Forgot Password  Bazhena
    Close Application
User clear cached data
    Open And Load Application
    Skip Settings
    Clear Data Сached data
    Close Application
User open the article and change front size of the article
    Open And Load Application
    Skip Settings
    Search The Article  Peris Hilton
    Open The Article
    Change Front Size
    Close Application
User open the article and change languages of the article
    Open And Load Application
    Skip Settings
    Search The Article  Peris Hilton
    Open The Article
    Change Language
    Close Application
User add article to save
    Open And Load Application
    Skip Settings
    Search The Article  Peris Hilton
    Open The Article
    Save Article
    Close Application
User verify the location
    Open And Load Application
    Skip Settings
    Search The Location  Minsk,Belarus
    Close Application
