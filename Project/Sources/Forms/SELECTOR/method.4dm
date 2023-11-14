var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅
	: ($e.code=On Load:K2:1)
		
		Form:C1466.parent.selector.onLoad()
		OBJECT SET ENABLED:C1123(*; "previous"; False:C215)
		
		var $i : Integer
		FORM GET PROPERTIES:C674(Current form name:C1298; $i; $i; $i)
		Form:C1466.numPages:=$i
		
		//┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅
	: ($e.code=On Resize:K2:27)
		
		Form:C1466.parent.selector.onResize()
		
		//┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅
	: ($e.code=On Page Change:K2:54)
		
		OBJECT SET ENABLED:C1123(*; "previous"; FORM Get current page:C276(*)#1)
		OBJECT SET ENABLED:C1123(*; "next"; FORM Get current page:C276(*)#Form:C1466.numPages)
		
		//┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅
End case 