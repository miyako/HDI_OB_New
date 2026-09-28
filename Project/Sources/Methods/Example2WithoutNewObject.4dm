//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:05:29
// ----------------------------------------------------
// Méthode : PreviousInitCommand
// Description
//  Previous  syntax to initialize an object with several object inside
// ----------------------------------------------------

C_OBJECT:C1216($attributes)
C_OBJECT:C1216($fourDMobileAttribute)

// Creation of the attributes with OB SET
OB SET:C1220($fourDMobileAttribute; "scope"; "none")
OB SET:C1220($attributes; "shared"; True:C214; "published4DMobile"; $fourDMobileAttribute)

$0:=$attributes