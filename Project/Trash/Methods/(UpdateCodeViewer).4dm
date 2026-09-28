//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 10:53:14
// ----------------------------------------------------
// Méthode : UpdateMySyntax
// Description
// Add/update Result and Code properties to an object past as parameter  (by reference)
// Paramètres
// Object to update
// Result (C_TEXT)
// Code (C_TEXT)
// ----------------------------------------------------
C_OBJECT:C1216($obj; $1)
C_TEXT:C284($result; $2)
C_TEXT:C284($code; $3)

$obj:=$1
$result:=$2
$code:=$3

OB SET:C1220($obj; "Result"; $result; "Code"; $code)