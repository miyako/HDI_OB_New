//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : v16R3InitEmptyObject
// Description
//  Syntax to initialize an empty object with New object
// ----------------------------------------------------

C_OBJECT:C1216($obj)

// creation of empty object with New object
$obj:=New object:C1471

// Pass $obj object as a parameter by reference to a method to fill it
CreateMessage($obj; "Object initialized in method")

$0:=$obj