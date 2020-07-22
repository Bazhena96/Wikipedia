*** Variables ***
${Email}  bazhenaka@gmail.com
${Article}  Peris Hilton
${NAME}  Bazhenka
${PASSWORD}  change13
&{CorrectUserName_IncorrectPassword}  UserName=bazhenka  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
&{IncorrectUsername_CorrectPassword}  UserName=cat  UserPassword=change13  ErrorMessage=Incorrect username or password entered. Please try again.
&{IncorrectPassword_IncorrectUsername}  UserName=cat  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
${ErrorMessage_InvalidCapture}  invalid CAPTURE
${NameForCreation}  testname89090023