var $e : Object
$e:=FORM Event:C1606

If ($e.code<0)
	
	var $data : Object
	$data:=Form:C1466.alert.data
	
	Case of 
			
			//______________________________
		: (Bool:C1537($data.close))
			
			Form:C1466.alert.hide()
			
			//______________________________
	End case 
End if 