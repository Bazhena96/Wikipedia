*** Variables ***
&{CorrectUserNameIncorrectPassword}  UserName=bazhenka  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
&{IncorrectUsernameCorrectPassword}  UserName=cat  UserPassword=change13  ErrorMessage=Incorrect username or password entered. Please try again.
&{IncorrectPasswordIncorrectUsername}  UserName=cat  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
${ErrorMessageInvalidCapture}  invalid CAPTURE




