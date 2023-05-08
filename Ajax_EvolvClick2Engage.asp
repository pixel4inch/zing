<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
	RecChkSQL = "SELECT * FROM Curated_industry_Speakers WHERE insider_code='"&trim(request("code"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If Not RecChkRS.EOF Then
		
	updateSQL = "UPDATE Curated_industry_Speakers SET I_will_speak = '"&trim(request("vchkI_will_speak"))&"',Keep_me_in_the_domain = '"&trim(request("vChkKeep_me_in_the_domain"))&"', I_will_join_your_panel = '"&trim(request("vChkI_will_join_your_panel"))&"',I_will_consider_hosting_events = '"&trim(request("vchkI_will_consider"))&"',Not_interested = '"&trim(request("vchkNot_interested"))&"',I_will_update_my_profile = '"&trim(request("vchkI_will_update_my_profile"))&"' WHERE insider_code='"&trim(request("code"))&"'"
		 MyCon.Execute updateSQL

		 '''INSERT DATA INTO Companies_Removed_MCPs
		
	End If
	
	set MyCon = Nothing
		
	'response.write RecChkSQL
%>