var $page : Integer

$page:=FORM Get current page:C276

Form:C1466.alert.show({\
title: "Hello world"; \
additional: "From page "+String:C10($page); \
ok: ($page%2#0 ? "Close" : "Done")\
})