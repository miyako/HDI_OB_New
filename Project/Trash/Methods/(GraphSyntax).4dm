//%attributes = {"invisible":true}
C_OBJECT:C1216($MyPreviousSyntax; $1)
C_OBJECT:C1216($MyV16R3Syntax; $2)
C_TEXT:C284($code)

$MyPreviousSyntax:=$1
$MyV16R3Syntax:=$2


$code:="<span>C_OBJECT($attributes)<br/>C_OBJECT($fourDMobileAttribute)<br/>C_OBJECT($obj)<br/><br/>  <span style=\"color:#0099B5\">// Creation of the attributes with OB SET<br/>OB SET($fourDMobileAttribute;\"scope\";\"none\")<br/>OB SET($attributes;\"published4DMob"+"ile\";$fourDMobileAttribute)</span><br/><br/>  // set the attributes values for the method : aMethod<br/>METHOD SET ATTRIBUTES(\"aMethod\";$attributes)<br/><br/>  // return of all the attributes of the method<br/>METHOD GET ATTRIBUTES(\"aMethod\";$obj)</sp"+"an>"

UpdateMySyntax($MyPreviousSyntax; JSON Stringify:C1217(PreviousGraphCommand()); $code)

$code:="<span>C_OBJECT($fourDMobileAttribute)<br/>C_OBJECT($obj)<br/><br/> <span style=\"color:#0099B5\"> // Creation of the attributes with OB New<br/>$attributes:=OB New(\"published4DMobile\";OB New(\"scope\";\"none\"))</span><br/><br/>  // set the attributes value"+"s for the method : aMethod<br/>METHOD SET ATTRIBUTES(\"aMethod\";$attributes)<br/><br/>  // return of all the attributes of the method<br/>METHOD GET ATTRIBUTES(\"aMethod\";$obj)</span>"

UpdateMySyntax($MyV16R3Syntax; JSON Stringify:C1217(V16R3GraphCommand()); $code)
