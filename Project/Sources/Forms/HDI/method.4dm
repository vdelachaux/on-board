var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//______________________________________________________
	: ($e.code=On Load:K2:1)
		
		// Initialize each integrated sub-form we need to use
		
		Form:C1466.alert:=cs:C1710.onBoard.new("on-board"; "MESSAGE")
		Form:C1466.alert.me:=Form:C1466.alert
		
		Form:C1466.progress:=cs:C1710.onBoard.new("on-board"; "PROGRESS")
		Form:C1466.progress.me:=Form:C1466.progress
		
		Form:C1466.selector:=cs:C1710.onBoard.new("on-board"; "SELECTOR")
		Form:C1466.selector.me:=Form:C1466.selector
		
		Form:C1466.wip:=cs:C1710.onBoard.new("on-board"; "WIP")
		Form:C1466.wip.me:=Form:C1466.wip
		
		//______________________________________________________
End case 