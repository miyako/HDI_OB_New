//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 13/03/17, 11:12:04
// ----------------------------------------------------
// Méthode : InitExamples
// Description
// Creation of Examples displaying
// ----------------------------------------------------


// Result Example1
Example1Result_WithoutNewObject:=JSON Stringify:C1217(Example1WithoutNewObject; *)
Example1Result_WithNewObject:=JSON Stringify:C1217(Example1WithNewObject; *)
// Result Example2
Example2Result_WithoutNewObject:=JSON Stringify:C1217(Example2WithoutNewObject; *)
Example2Result_WithNewObject:=JSON Stringify:C1217(Example2WithNewObject; *)
// Result Example3
Example3Result_WithoutNewObject:=Example3WithoutNewObject
Example3Result_WithNewObject:=Example3WithNewObject

If (Get database localization:C1009(Current localization:K5:22)="ja")
	$json:=JSON Parse:C1218(Folder:C1567(fk resources folder:K87:11).file("SAMPLES-ja.json").getText(); Is collection:K8:32)
Else 
	$json:=JSON Parse:C1218(Folder:C1567(fk resources folder:K87:11).file("SAMPLES-en.json").getText(); Is collection:K8:32)
End if 

// search text of code sample example 1
//QUERY([SAMPLES]; [SAMPLES]ID=1)
$SAMPLES:=$json.query("ID == :1"; 1).first()

Example1Code_WithoutNewObject:=$SAMPLES.Text_Previous
Example1Code_WithNewObject:=$SAMPLES.Text_16R3
// search text of code sample example 2
//QUERY([SAMPLES]; [SAMPLES]ID=2)
$SAMPLES:=$json.query("ID == :1"; 2).first()

Example2Code_WithoutNewObject:=$SAMPLES.Text_Previous
Example2Code_WithNewObject:=$SAMPLES.Text_16R3
// search text of code sample example 3
//QUERY([SAMPLES]; [SAMPLES]ID=3)
$SAMPLES:=$json.query("ID == :1"; 3).first()

Example3Code_WithoutNewObject:=$SAMPLES.Text_Previous
Example3Code_WithNewObject:=$SAMPLES.Text_16R3

