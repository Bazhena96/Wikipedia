*** Variables ***
&{Correct username but incorrect password}  UserName=bazhenka  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
&{Incorrect username but correct password}  UserName=cat  UserPassword=change13  ErrorMessage=Incorrect username or password entered. Please try again.
&{Incorrect password and incorrect username}  UserName=cat  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
${ErrorMessageInvalidCapture}  invalid CAPTURE




