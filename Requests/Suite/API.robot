*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary  #Used to display smth we god back API tests.
*** Test Cases ***
Make a simple API call
    [Tags]  API GET
    Check github username
Display bio from github
    [Tags]  API GET
    Bio From Github
Get Avatar Username
    [Tags]  API GET
    Avatar Username
*** Keywords ***
Check Github Username
    #Create the session
    Create Session  github  https://api.github.com

    #Make call
    ${responce}=  Get request  github  /users/Bazhena96

    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200

    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    Should Be Equal As Strings  ${json['login']}  Bazhena96
    Log  ${json}
Bio From Github
    #Create the session
    Create Session  github  https://api.github.com
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96

    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200

    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    Should Be Equal As Strings  ${json['bio']}  Automation Quality Assurance Engineer 👧
    Log  ${json}
Avatar Username
    #Create the session
    Create Session  github  https://api.github.com

    #Make call
    ${responce}=  Get request  github  /users/Bazhena96

    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200

    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    ${avatar url}=  Set Variable  ${json['avatar_url']}  https://avatars0.githubusercontent.com/u/61382562?v=4












