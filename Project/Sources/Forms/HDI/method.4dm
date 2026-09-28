Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form.quit:=False
		
		If (Application version:C493<Form.minimumVersion)
			
			Form.quit:=True
			OBJECT SET TITLE:C194(*; "BtnDemo"; Localized string("BtnClose"))
			OBJECT SET VISIBLE:C603(*; "TxtSorry@"; True:C214)
			OBJECT SET VISIBLE:C603(*; "TxtInfo@"; False:C215)
			
		End if 
		
End case 
