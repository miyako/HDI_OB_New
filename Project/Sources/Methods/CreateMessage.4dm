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
// Message (Text)
// ----------------------------------------------------

#DECLARE($obj : Object; $message : Text)

OB SET:C1220($obj; "Message"; $message)
