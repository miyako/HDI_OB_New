//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : PreviousInitEmptyObject
// Description
//  Previous  syntax to initialize an empty object
// ----------------------------------------------------

#DECLARE->$obj : Object

// creation of empty object with JSON Parse
$obj:=JSON Parse:C1218("{}")

//Pass $obj object as a parameter by reference to a method to fill it
CreateMessage($obj; "Object initialized in method")
