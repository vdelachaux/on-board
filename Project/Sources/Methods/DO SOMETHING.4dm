//%attributes = {}
#DECLARE($caller : Integer)

var $message : Text
var $i; $length; $progress : Integer

// Simulate preparations
DELAY PROCESS:C323(Current process:C322; 100)

$length:=80  // 100%

For ($i; 1; $length; 1)
	
	DELAY PROCESS:C323(Current process:C322; 5)
	
	If (Milliseconds:C459%3=0)  // Simulate a non-linear progression 😱
		
		$progress:=Round:C94($i*100/$length; 0)
		$message:=String:C10($progress; "##0%")
		
		CALL FORM:C1391($caller; Formula:C1597(Form:C1466.progress.setProgress($progress; $message)))
		
	End if 
End for 

// Close
CALL FORM:C1391($caller; Formula:C1597(Form:C1466.progress.hide()))