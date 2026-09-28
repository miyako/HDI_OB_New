//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:12:04
// ----------------------------------------------------
// Méthode : InitExample3
// Description
// Creation of Example display in tab 3
// ----------------------------------------------------

C_OBJECT:C1216(Example3_MyPreviousSyntax)
C_OBJECT:C1216(Example3_MyV16R3Syntax)
Example3_MyPreviousSyntax:=New object:C1471
Example3_MyV16R3Syntax:=New object:C1471

// search code sample
QUERY:C277([SAMPLES:4]; [SAMPLES:4]ID:5=3)

// Loading of previous syntax
UpdateCodeViewer(Example3_MyPreviousSyntax; JSON Stringify:C1217(PreviousInitCommand; *); [SAMPLES:4]Text_Previous:2)

// Loading of syntax with OB New
UpdateCodeViewer(Example3_MyV16R3Syntax; JSON Stringify:C1217(v16R3InitCommand; *); [SAMPLES:4]Text_16R3:3)
