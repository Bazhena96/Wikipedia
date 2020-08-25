*** Variables ***
&{CORRECT USERNAME BUT INCORRECT PASSWORD}  UserName=bazhenka  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.
&{INCORRECT USERNAME BUT CORRECT PASSWORD}  UserName=cat  UserPassword=change13  ErrorMessage=Incorrect username or password entered. Please try again.
&{INCORRECT USERNAME AND PASSWORD}  UserName=cat  UserPassword=12345  ErrorMessage=Incorrect username or password entered. Please try again.




