var $e : Object
$e:=FORM Event:C1606

If ($e.code<0)
	
	var $name : Text
	$name:=OBJECT Get name:C1087(Object current:K67:2)
	
	// Get data associated with the subform
	var $data : Object
	$data:=OBJECT Get value:C1743($name)
	
/*
	
Doing things, if need be
	
Possibly call return to avoid executing the code below
	
*/
	
	// Standard actions
	Case of 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		: (Bool:C1537($data.close))
			
			OBJECT SET VISIBLE:C603(*; $name; False:C215)
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
	End case 
	
Else 
	
	// Standard form events
	
End if 