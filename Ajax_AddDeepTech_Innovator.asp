<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4
		
	
	RecChkSQL = "SELECT * FROM Evolv_DeepTech_Innovator WHERE Company ='"&trim(request("vCompany"))&"' and email='" &trim(request("vEmail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
		
		 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "INSERT INTO [evolv_user].[Evolv_DeepTech_Innovator]([Company],[Salutation],[First_Name],[Last_Name],[JobTitle],[Email],[Phone],[SteetAddress],[AddressLine],[City],[State],[zip],[country],[website],[DOMAIN_EXPERTISE_Primary],[DOMAIN_EXPERTISE_Relevant],[Primary_Product_service_solution],[BusinessModel],[MainCompetitors],[Primary_AdvantageOver_Competitors],[KeyCustomers],[TotalFundingReveived_InUSD],[TotalRoundsofFunding],[Submitter_FirstName],[Submitter_LastName],[Submitter_Company],[Submitter_email],[Submitter_Confim_email],[Submitter_phone],[Created_Date],[Status],[PageSource]) VALUES ('"&trim(request("vCompany"))&"','"&trim(request("vSalutation"))&"','"&trim(request("vFirst_Name"))&"','"&trim(request("vLast_Name"))&"','"&trim(request("vJobTitle"))&"','"&trim(request("vEmail"))&"','"&trim(request("vPhone"))&"','"&trim(request("vSteetAddress"))&"','"&trim(request("vAddressLine"))&"','"&trim(request("vCity"))&"','"&trim(request("vState"))&"','"&trim(request("vzip"))&"','"&trim(request("vcountry"))&"','"&trim(request("vwebsite"))&"','"&trim(request("vDOMAIN_EXPERTISE_Primary"))&"','"&trim(request("vDOMAIN_EXPERTISE_Relevant"))&"','"&trim(request("vPrimary_Product_service_solution"))&"','"&trim(request("vBusinessModel"))&"','"&trim(request("vMainCompetitors"))&"','"&trim(request("vPrimary_AdvantageOver_Competitors"))&"','"&trim(request("vKeyCustomers"))&"','"&trim(request("vTotalFundingReveived_InUSD"))&"','"&trim(request("vTotalRoundsofFunding"))&"','"&trim(request("vSubmitter_FirstName"))&"','"&trim(request("vSubmitter_LastName"))&"','"&trim(request("vSubmitter_Company"))&"','"&trim(request("vSubmitter_email"))&"','"&trim(request("vSubmitter_Confim_email"))&"','"&trim(request("vSubmitter_phone"))&"',getdate(),'Y','"&trim(request("vPageSource"))&"')" 
		 MyCon.Execute InsertSQL
		
		
	
		
	End If
	
	set MyCon = Nothing
		
	''response.write InsertSQL
%>