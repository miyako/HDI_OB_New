//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : v16R3InitCommand
// Description
//  Syntax to initialize an object with several object inside with New object
// ----------------------------------------------------

C_OBJECT:C1216($attributes)

// Creation of the attributes with New object
$attributes:=New object:C1471("shared"; True:C214; "published4DMobile"; New object:C1471("scope"; "none"))

$0:=$attributes