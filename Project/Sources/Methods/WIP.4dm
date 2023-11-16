//%attributes = {}
#DECLARE($caller : Integer)

// Simulate work
DELAY PROCESS:C323(Current process:C322; 100)

// Close
CALL FORM:C1391($caller; Formula:C1597(Form:C1466.wip.hide()))