//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : PreviousLoop
// Description
//  Previous syntax to initialize an object in a loop
// ----------------------------------------------------

#DECLARE->$result : Text
var $vCounter : Integer
var $obj : Object
ARRAY OBJECT:C1221($res; 0)

For ($vCounter; 1; 5)
	
	//Resets variable
	CLEAR VARIABLE:C89($obj)
	//Add value to $obj
	OB SET:C1220($obj; "line"; "Line number "+String:C10($vCounter))
	
	//Memorize the object in an array
	APPEND TO ARRAY:C911($res; $obj)
	
End for 
//return the array stringified
$result:=JSON Stringify array:C1228($res; *)
