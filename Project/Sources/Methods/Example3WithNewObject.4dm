//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : v16R3InitLoop
// Description
//  Syntax to initialize an object in a loop with New object
// ----------------------------------------------------

C_LONGINT:C283($vCounter)
ARRAY OBJECT:C1221($refs; 0)

For ($vCounter; 1; 5)
	// Resets variable, Add value to $obj and Memorize the object in an array
	APPEND TO ARRAY:C911($refs; New object:C1471("line"; "Line number "+String:C10($vCounter)))
End for 

//return the array stringified
$0:=JSON Stringify array:C1228($refs; *)