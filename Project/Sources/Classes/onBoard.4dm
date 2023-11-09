property form : Text
property instances : Collection

Class constructor($name : Text; $form : Text)
	
	This:C1470.form:=$form
	This:C1470.instances:=[{name: $name; data: {}}]  // Template
	
	// Make sure the widget is invisible
	OBJECT SET VISIBLE:C603(*; $name; False:C215)
	
	// Make sure the widget is vertically and horizontally expandable
	OBJECT SET RESIZING OPTIONS:C1175(*; $name; Resize horizontal grow:K42:8; Resize vertical grow:K42:11)
	
	// Set the widget associated subform
	OBJECT SET SUBFORM:C1138(*; $name; $form)
	
	// <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <==
	// Returns the name of the widget on the current page
Function get name() : Text
	
	If (This:C1470.instances#Null:C1517)\
		 && (This:C1470.instances.length>0)
		
		return This:C1470.instances[0].name+"_"+String:C10(FORM Get current page:C276)
		
	End if 
	
	// === === === === === === === === === === === === === === === === === ===
	// Displays widget
Function show($data : Object)
	
	var $name : Text
	$name:=This:C1470.name
	
	var $instance : Object
	$instance:=This:C1470.instances.query("name = :1"; $name).first()
	
	If ($instance=Null:C1517)
		
		// Create the widget above all objects
		ARRAY TEXT:C222($names; 0)
		FORM GET OBJECTS:C898($names; Form current page:K67:6)
		
		var $ptr : Pointer
		OBJECT DUPLICATE:C1111(*; This:C1470.instances[0].name; $name; $ptr; $names{Size of array:C274($names)})
		
		var $page : Integer
		$page:=FORM Get current page:C276
		This:C1470.instances[$page]:={name: $name; data: {}}
		
		$instance:=This:C1470.instances[$page]
		
	End if 
	
	$instance.data:=$data
	
	// Place
	var $height; $width : Integer
	OBJECT GET SUBFORM CONTAINER SIZE:C1148($width; $height)
	OBJECT SET COORDINATES:C1248(*; $name; 0; 0; $width; $height)
	
	OBJECT SET VALUE:C1742($name; $instance.data)
	
	// Show
	OBJECT SET VISIBLE:C603(*; $name; True:C214)
	
	// === === === === === === === === === === === === === === === === === ===
	// Hides widget
Function hide($name : Text)
	
	$name:=$name || This:C1470.name
	OBJECT SET VISIBLE:C603(*; $name; False:C215)
	
	// <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <== <==
	// Returns the data of the widget on the current page
Function get data() : Object
	
	var $name : Text
	$name:=This:C1470.name
	
	If (OBJECT Get type:C1300(*; $name)#Object type unknown:K79:1)
		
		return OBJECT Get value:C1743($name)
		
	End if 
	
	// ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==> ==>
	// Sets the data of the widget on the current page
Function set data($data : Object)
	
	var $name : Text
	$name:=This:C1470.name
	
	If (OBJECT Get type:C1300(*; $name)#Object type unknown:K79:1)
		
		OBJECT SET VALUE:C1742(This:C1470.name; $data)
		
	End if 
	
	// === === === === === === === === === === === === === === === === === ===
	// Adjust the size of all instances in the form
Function resize()
	
	var $height; $width : Integer
	OBJECT GET SUBFORM CONTAINER SIZE:C1148($width; $height)
	
	var $instance : Object
	For each ($instance; This:C1470.instances; 1)
		
		OBJECT SET COORDINATES:C1248(*; $instance.name; 0; 0; $width; $height)
		
	End for each 
	