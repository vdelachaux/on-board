var $e : Object
$e:=FORM Event:C1606

If ($e.code<0)
	
	var $name : Text  // The name of the container
	$name:=OBJECT Get name:C1087(Object current:K67:2)
	
	var $form : Text
	var $ptr : Pointer  // The name of the current displayed sub-form
	OBJECT GET SUBFORM:C1139(*; $name; $ptr; $form)
	
	var $data : Object  // The data associated with the subform (Form)
	$data:=OBJECT Get value:C1743($name)
	
/*
	
Doing things, if need be
	
Possibly call "return" to avoid executing the "Standard actions" code that follows.
	
*/
	
	// MARK:Specific actions
	Case of 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		: ($data.selectorIndex#Null:C1517)
			
			Form:C1466.alert.show({\
				title: "Your choice was:"; \
				additional: String:C10($data.selectorIndex)\
				})
			
			return 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		Else 
			
			// A "Case of" statement should never omit "Else"
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
	End case 
	
	// MARK:Standard actions
	Case of 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		: (Bool:C1537($data.close))
			
			OBJECT SET VISIBLE:C603(*; $name; False:C215)
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		Else 
			
			// A "Case of" statement should never omit "Else"
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
	End case 
	
Else 
	
	// Standard form events
	
End if 