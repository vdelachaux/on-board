//%attributes = {}
#DECLARE($caller : Integer)

var $i; $length : Integer

DELAY PROCESS:C323(Current process:C322; 100)

$length:=80

For ($i; 1; $length; 1)
	
	DELAY PROCESS:C323(Current process:C322; 5)
	
	If (Milliseconds:C459%3=0)
		
		CALL FORM:C1391($caller; Formula:C1597(Form:C1466.progress.setProgress($i*100/$length; String:C10(Round:C94($i*100/$length; 0))+"%")))
		
	End if 
End for 

CALL FORM:C1391($caller; Formula:C1597(Form:C1466.progress.hide()))