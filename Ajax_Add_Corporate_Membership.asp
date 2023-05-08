<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
	RecChkSQL = "SELECT * FROM Evolv_Membership WHERE Email ='"&trim(request("vEmail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	dim getMessage
	getMessage = ""
	If RecChkRS.EOF Then		
		 InsertSQL = "INSERT INTO Evolv_Membership ([First_Name],[Last_Name],[Email],[Mobile],[LinkedInLink],[Location],[Member_Type],[SubmittedDate],[Status]) VALUES ('"&trim(request("vFirst_Name"))&"','"&trim(request("vLast_Name"))&"','"&trim(request("vEmail"))&"','"&trim(request("vPhone"))&"','"&trim(request("vLinkedin"))&"','"&trim(request("vlocation"))&"','CORPORATE',getdate(),'Y')" 
		 MyCon.Execute InsertSQL
		 getMessage = "Your membership request has been recieved. We will get back to you shortly. Thank you"
	else
		getMessage = "We already have your membership request. We will get back to you shortly. Thank you"
	End If
	
	set MyCon = Nothing
		
	response.write getMessage
%>