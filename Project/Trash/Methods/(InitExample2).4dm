//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:12:04
// ----------------------------------------------------
// Méthode : InitExample2
// Description
// Creation of Example display in tab 2
// ----------------------------------------------------

C_OBJECT:C1216(Example2_MyPreviousSyntax)
C_OBJECT:C1216(Example2_MyV16R3Syntax)
Example2_MyPreviousSyntax:=New object:C1471
Example2_MyV16R3Syntax:=New object:C1471

// search code sample
QUERY:C277([SAMPLES:4]; [SAMPLES:4]ID:5=2)

// Loading of previous syntax
UpdateCodeViewer(Example2_MyPreviousSyntax; JSON Stringify:C1217(PreviousInitEmptyObject; *); [SAMPLES:4]Text_Previous:2)

// Loading of syntax with OB New
UpdateCodeViewer(Example2_MyV16R3Syntax; JSON Stringify:C1217(v16R3InitEmptyObject; *); [SAMPLES:4]Text_16R3:3)
