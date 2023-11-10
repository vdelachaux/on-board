var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//______________________________________________________
	: ($e.code=On Load:K2:1)
		
		Form:C1466.alert:=cs:C1710.onBoard.new("onBoard"; "MESSAGE"; Form:C1466)
		Form:C1466.progress:=cs:C1710.onBoard.new("onBoard"; "PROGRESS"; Form:C1466)
		
		//______________________________________________________
End case 