var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//______________________________________________________
	: ($e.code=On Resize:K2:27)
		
		var $hOffset; $vOffset : Real
		var $bottom; $height; $i; $left; $right; $top : Integer
		var $width : Integer
		
		OBJECT GET SUBFORM CONTAINER SIZE:C1148($width; $height)
		OBJECT GET COORDINATES:C663(*; "Rectangle"; $left; $top; $right; $bottom)
		
		$hOffset:=($width/2)-($left+(($right-$left)/2))
		$vOffset:=($height/4)-$top
		
		ARRAY TEXT:C222($widgets; 0)
		FORM GET OBJECTS:C898($widgets)
		
		For ($i; 1; Size of array:C274($widgets); 1)
			
			If ($widgets{$i}="back@")
				
				OBJECT SET COORDINATES:C1248(*; $widgets{$i}; 0; 0; $width; $height)
				
			Else 
				
				OBJECT MOVE:C664(*; $widgets{$i}; $hOffset; $vOffset)
				
			End if 
		End for 
		
		//______________________________________________________
	: ($e.code=On Bound Variable Change:K2:52)
		
		var $t : Text
		
		For each ($t; Form:C1466)
			
			OBJECT SET TITLE:C194(*; $t; Form:C1466[$t])
			
		End for each 
		
		//______________________________________________________
End case 