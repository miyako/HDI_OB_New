//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : PreviousLoop
// Description
//  Previous syntax to initialize an object in a loop
// ----------------------------------------------------

C_LONGINT:C283($vCounter)
ARRAY OBJECT:C1221($res; 0)
C_OBJECT:C1216($obj)

For ($vCounter; 1; 5)
	
	//Resets variable
	CLEAR VARIABLE:C89($obj)
	//Add value to $obj
	OB SET:C1220($obj; "line"; "Line number "+String:C10($vCounter))
	
	//Memorize the object in an array
	APPEND TO ARRAY:C911($res; $obj)
	
End for 
//return the array stringified
$0:=JSON Stringify array:C1228($res; *)