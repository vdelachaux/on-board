var $e : Object
$e:=FORM Event:C1606

If ($e.code<0)
	
	var $me : Object
	$me:=OBJECT Get value:C1743(OBJECT Get name:C1087).me.instance.data
	
	// MARK:-Specific actions
	
/*
	
Doing things, if need be
	
*/
	
	Case of 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		: ($me.CANCELLED)
			
			// <NOTHING MORE TO DO>
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
		: ($me.selectorIndex#Null:C1517)\
			 && ($me.ACCEPTED)
			
			If (Num:C11(Form:C1466.selectorIndex)#($me.selectorIndex-1))
				
				// Keep current
				Form:C1466.selectorIndex:=$me.selectorIndex-1
				
				// Display result
				Form:C1466.alert.show({\
					title: "Your choice is:"; \
					additional: ["4D"; "Usage Externe"; "macOS"; "Windows"][Form:C1466.selectorIndex]\
					})
				
				return   // 📌 Avoid executing code that follows
				
			End if 
			
			//╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍
	End case 
	
	// MARK:-Standard actions
	
	$me.me.hide()
	
	return 
	
End if 

// MARK:-Standard (positive) form events

//