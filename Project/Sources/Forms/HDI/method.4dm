var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//______________________________________________________
	: ($e.code=On Load:K2:1)
		
		// Initialize each integrated sub-form we need to use
		Form:C1466.alert:=cs:C1710.onBoard.new("on-board"; "MESSAGE"; Form:C1466)
		Form:C1466.progress:=cs:C1710.onBoard.new("on-board"; "PROGRESS"; Form:C1466)
		Form:C1466.selector:=cs:C1710.onBoard.new("on-board"; "SELECTOR"; Form:C1466)
		Form:C1466.wip:=cs:C1710.onBoard.new("on-board"; "WIP"; Form:C1466)
		
		//______________________________________________________
End case 