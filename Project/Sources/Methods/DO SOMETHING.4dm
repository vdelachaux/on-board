//%attributes = {}
#DECLARE($caller : Integer)

var $i : Integer

DELAY PROCESS:C323(Current process:C322; 15)

For ($i; 1; 100; 1)
	
	DELAY PROCESS:C323(Current process:C322; 5)
	
End for 

CALL FORM:C1391($caller; Formula:C1597(Form:C1466.progress.hide()))