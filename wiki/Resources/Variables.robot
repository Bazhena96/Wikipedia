*** Variables ***
${email}  bazhenaka@gmail.com
${article}  Peris Hilton
${name}  Bazhenka
${password}  change13
&{correctUserNameIncorrectPassword}  UserName=bazhenka  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
&{incorrectUsernameCorrectPassword}  UserName=cat  UserPassword=change13  ErrorMessage=Incorrect username or password entered. Please try again.
&{incorrectPasswordIncorrectUsername}  UserName=cat  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
${errorMessageInvalidCapture}  invalid CAPTURE
${nameForCreation}  testname89090023