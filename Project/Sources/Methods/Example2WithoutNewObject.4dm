//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : PreviousInitCommand
// Description
//  Previous  syntax to initialize an object with several object inside
// ----------------------------------------------------

#DECLARE->$attributes : Object
var $fourDMobileAttribute : Object

// Creation of the attributes with OB SET
OB SET:C1220($fourDMobileAttribute; "scope"; "none")
OB SET:C1220($attributes; "shared"; True:C214; "published4DMobile"; $fourDMobileAttribute)
