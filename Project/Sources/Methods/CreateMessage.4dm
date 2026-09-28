//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 10:58:34
// ----------------------------------------------------
// Méthode : CreateMessage
// Description
// Add/update Message property to an object past as parameter (by reference)
// Paramètres
// Object to update
// Message (C_TEXT)
// ----------------------------------------------------

C_OBJECT:C1216($obj; $1)
C_TEXT:C284($message; $2)

$obj:=$1
$message:=$2

OB SET:C1220($obj; "Message"; $message)