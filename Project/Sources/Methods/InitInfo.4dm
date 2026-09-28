//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:12:04
// ----------------------------------------------------
// Méthode : InitInfo
// Description
// Creation of Info Text
// ----------------------------------------------------

C_TEXT:C284(vartitle)

If (Get database localization:C1009(Current localization:K5:22)="ja")
	$json:=JSON Parse:C1218(Folder:C1567(fk resources folder:K87:11).file("SAMPLES-ja.json").getText(); Is collection:K8:32)
Else 
	$json:=JSON Parse:C1218(Folder:C1567(fk resources folder:K87:11).file("SAMPLES-en.json").getText(); Is collection:K8:32)
End if 

$SAMPLES:=$json.query("ID == :1"; 0).first()

//QUERY([SAMPLES]; [SAMPLES]ID=0)

vartitle:=$SAMPLES.Text_Previous
