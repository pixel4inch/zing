<!DOCTYPE html>
<!--#include file="LoadingImage.asp"-->
<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INDUSTRY INFLUENCERS  - Zing.CC</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="description" content="Zing">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Zing ">
  <meta name="generator" content="Zing">
  
  <!-- theme meta -->
  <meta name="theme-name" content="Zing" />

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <link rel="stylesheet" href="plugins/slick/slick-theme.css"/>
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css"/>
  <link rel="stylesheet" href="plugins/aos/aos.css"/>


  <!-- CUSTOM CSS -->
    <link href="./css/style.css" rel="stylesheet"/>
  <link href="./css/custome.css" rel="stylesheet"/>
  <link href="./css/view_speakers.css" rel="stylesheet"/>
  <link href="./css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  
  
  
  	<!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  <script>
  window.onbeforeunload = function () {
  window.scrollTo(0, 0);
	}
  </script>
<%


Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function

'' for paging
	dim k,rec_per_page
	rec_per_page=30
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
</head>
<%
''Response.ExpiresAbsolute = 0
''Response.CodePage = 65001
''Response.CharSet = "utf-8"
%>
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="rc4.inc"-->


<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
 <!--div id="overlay">
    <div id="progstat" ></div>
    <div id="progress"></div>
    </div>
  
  </div-->
<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
	<header-component></header-component>
<!--============================
=            Top Strip      End   =
=============================-->




<!--================================
=            Page Title            =
=================================-->

<section class="section">
	<div class="container">
		<div class="row">
			<div class="w-100">
				<!-- Page Title -->
				<div class=" mb-3 position-relative">
				
				<%
				'''
				''test = EnDeCrypt("Internet of Things",CHkGiaPSWD)
				''response.write server.urlencode(test)
				dim ShowTypeSTR, SRCWordSTR, GTcountrySTR, InvTypeSTR
				ShowTypeSTR = EnDeCrypt(trim(request("ShowType")),CHkGiaPSWD)
				SRCWordSTR = EnDeCrypt(trim(request("SRCWord")),CHkGiaPSWD)
				GTcountrySTR = EnDeCrypt(trim(request("GTcountry")),CHkGiaPSWD)
				InvTypeSTR = EnDeCrypt(trim(request("InvType")),CHkGiaPSWD)
				SrcTypeSTR = EnDeCrypt(trim(request("SrcType")),CHkGiaPSWD)
				EIDSTR = EnDeCrypt(trim(request("EID")),CHkGiaPSWD)
				cntSTR = EnDeCrypt(trim(request("cnt")),CHkGiaPSWD)
				'''ENCRYPT AGAIN
				dim REShowTypeSTR, RESRCWordSTR, REGTregionSTR, REInvTypeSTR
				REShowTypeSTR = server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
				RESRCWordSTR = server.urlencode(EnDeCrypt(trim(SRCWordSTR),CHkGiaPSWD))
				REGTcountrySTR = server.urlencode(EnDeCrypt(trim(GTcountrySTR),CHkGiaPSWD))
				REInvTypeSTR = server.urlencode(EnDeCrypt(trim(InvTypeSTR),CHkGiaPSWD))
				RESrcTypeSTR = server.urlencode(EnDeCrypt(trim(SrcTypeSTR),CHkGiaPSWD))
				REEIDSTR = server.urlencode(EnDeCrypt(trim(EIDSTR),CHkGiaPSWD))
				REcntSTR = server.urlencode(EnDeCrypt(trim(cntSTR),CHkGiaPSWD))
				
				Dim GetStatrtVal
				GetStatrtVal = EnDeCrypt(trim(request("Start")),CHkGiaPSWD)
				''response.write SrcTypeSTR
				Dim Start1, StartBack
							If trim(GetStatrtVal)<>"" Then
								Start1 = trim(GetStatrtVal)+30
								If trim(GetStatrtVal)<>0 then
									StartBack = trim(GetStatrtVal) - 30
								else
									StartBack = 0
								End If
							Else
								Start1 = 30
								StartBack = 0
							End If
							
							'If trim(Start1)>=900 Then
							'	Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
							'	response.end
							'End If
				If trim(SRCWordSTR)="[" Then
					SRCWordSTR = "[S]"
				End If
							
				If trim(Start1)>=91 Then%>
					<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class="a_back a_nav  <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Industry_Influencers.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&InvType=<%=trim(REInvTypeSTR)%>&Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>" style=" margin: 10px 10px 10px 35px; align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left " aria-hidden="true"></i></a>
						
					</div>
					<!--div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
								<p align='center'><B> <font color='red' ><strong style='color:red;size:18px;'>VIEWING PRIVILEGES LIMITED. REQUEST FULL STACK ACCESS.</strong></font></p><a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" style=" align-items: center;   font-weight: bold;   font-size: 17px;">Register</a>
							</div-->
							<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
								<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://www.evolv.cc/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 20px;">Login  to  Continue</a>
							</div>
					<%else
	
					If trim(Start1)=30 Then%>
					<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class=" a_back a_nav a_link_default <%=SelectedActive(request("Cp"),GTnum) %>"  style=" margin: 10px 10px 10px 35px; align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left " style="color:#c4c4c4 !important;" aria-hidden="true"></i></a>
						<!--<a class="a_back a_nav  <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Industry_Influencers.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&InvType=<%=trim(REInvTypeSTR)%>&Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>" target="_blank" style=" margin: 10px 10px 10px 35px; align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left " aria-hidden="true"></i></a>-->
						<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Industry_Influencers.asp?Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 10px 35px 10px 10px;   align-items: center; display:flex ;font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
					</div>
					
					<%else%>
						<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class="a_back  a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Industry_Influencers.asp?Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 10px 10px 10px 35px; align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a>
								<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Industry_Influencers.asp?Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 10px 35px 10px 10px;   align-items: center; display:flex ;font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
					</div>
					
					
					<%end if
					
					end if
					''
					''ConditionQry="select replace(replace('(((b.industries like  ''%'+ String_AGG(trim(Industries),'%'') OR (b.industries like  ''%') + ' %'')) or ((b.Industry_Groups like  ''%'+ String_AGG(trim(Industries_Group),'%'') OR (b.Industry_Groups like  ''%') + ' %'')))',' %','%'),'% ','%') AS Industry_query,headline,max(Total_Count ) as strCnt  from evolv_Industries where headline='"&trim(SrcTypeSTR) &"' and status='Y' group by headline"							
					ConditionQry="select replace(replace('(((industries like  ''%'+ String_AGG(trim(Industries),'%'') OR (industries like  ''%') + ' %'')) or ((Industry_Groups like  ''%'+ String_AGG(trim(Industries_Group),'%'') OR (Industry_Groups like  ''%') + ' %'')))',' %','%'),'% ','%') AS Industry_query,headline,max(Total_Count ) as strCnt  from evolv_Industries where headline='"&trim(SrcTypeSTR) &"' and status='Y' group by headline"							
					
				''	Set RSCondition = Server.CreateObject("ADODB.Recordset")
				''	'response.write ConditionQry
				''	'response.end
				''	RSCondition.Open ConditionQry, Datasource4
				''	If Not RSCondition.EOF Then 
				''		CondQry=trim(RSCondition("Industry_query"))
				''		strHead=trim(RSCondition("headline"))
				''		strCnt=trim(RSCondition("strCnt"))
				''	end if
				''	set RSCondition=nothing
				''	if strCnt <>"" then
				''		cntSTR=strCnt
				''	end if
					'''response.write "Industries = "&trim(CondQry)
					%>
				<h1 class="font-display2 col-lg-10 col-md-10 col-sm-10 col-10 text-center mx-auto" id="section-top">
					<%=ucase(trim(SrcTypeSTR))%> INFLUENCERS [<span class="main-font-color" ><%=cntSTR%></span>]</h2>
				</div>
				<!-- Page Description -->
				
			

			</div>
			<div class="col-12 mx-auto"  >
				<div class="rounded  p-2 bg-white" >
					<div class="row">
						

							<p class="Alp_Display w-100 my-1 text-center"> 
				 <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&srctype=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">A</a> 
				  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">B</a>
                  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">C</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">D</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">E</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">F</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">G</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">H</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">I</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">J</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">K</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">L</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">M</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">N</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">O</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">P</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Q</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">R</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[S]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[S]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">S</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">T</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">U</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">V</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">W</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">X</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Y</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="Show_Industry_Influencers.asp?EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Companies</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%							

						    ''	CountryQry="select distinct a.First_name,a.last_name,a.headline,a.company_name,a.image_path,a.gender from [marketcb].[marketgl_cbcrawler].[gia_cbcrawler__person] a, [GIA_MC_PROGRAM].[dbo].[CB_Global_Companies_new_4] b"
						    ''	CountryQry= CountryQry & " where image_path is not null and a.[company_name]=b.[Organization_Name] and (headline like ('%Chief%') OR headline like ('%Founder%') OR headline like ('%President%') OR headline like ('%Director%') OR headline like ('%vice%')  OR headline like ('%CEO%') OR headline like ('%CMO%') OR headline like ('%CIO%')) "
							
						''	CountryQry="select First_name,last_name,headline,company_name,image_path,gender from [marketcb].[dbo].evolv_gia_cbcrawler_person where 1=1 and "
						
						
							CountryQry="select first_name, last_name, headline, company_name, gender, image_path, industry, industryCount from    dbo.evolv_industry_people where 1=1 and industry='"&trim(SrcTypeSTR) &"' "
							
                            '' CountryQry="WITH Dups AS(SELECT first_name, last_name, headline,company_name,image_path, gender, Industries, Industry_Groups,ROW_NUMBER() OVER (PARTITION BY first_name,last_name,headline,company_name,image_path, gender, Industries, Industry_Groups ORDER BY (SELECT 0)) AS rn FROM vw_Industry_Influencers) select * FROM Dups WHERE (rn = 1) "

							'CountryQry="select distinct a.First_name,a.last_name,a.headline,a.company_name,a.image_path,a.gender from [marketcb].[marketgl_cbcrawler].[gia_cbcrawler__person] a, [GIA_MC_PROGRAM].[dbo].[CB_Global_Companies_new_4] b"
							'CountryQry= CountryQry & " where image_path is not null and a.[company_name]=b.[Organization_Name] and (headline like ('%Chief%') OR headline like ('%Founder%') OR headline like ('%President%') OR headline like ('%Director%') OR headline like ('%vice%')  OR headline like ('%CEO%') OR headline like ('%CMO%') OR headline like ('%CIO%')) "
							
							
							If Trim(SRCWordSTR) <> "" Then
									''CountryQry = CountryQry & " and (a.last_name like '"&Trim(SRCWordSTR)&"%') "	
							           CountryQry = CountryQry & " and (last_name like '"&Trim(SRCWordSTR)&"%') "										
							End If									
							''CountryQry = CountryQry & " and " & CondQry & " order by a.last_name "	
				                     CountryQry = CountryQry &  " order by last_name "							
							
							'' order by CASE WHEN a.headline like ('%CEO%') THEN 1 WHEN a.headline like ('%Founder%') THEN 2 WHEN a.headline like ('%chief%') THEN 3 WHEN a.headline like ('%President%') THEN 4 WHEN a.headline like ('%Director%') THEN 5 WHEN a.headline like ('%Manager%') THEN 6 ELSE 7 END,a.last_name 
							''limit 100, 200
							Dim LimitSTR
							LimitSTR = ""
							''OFFSET 0 ROWS -- START FROM RECORD
							''FETCH NEXT 30 ROWS ONLY
							If trim(GetStatrtVal)="" then
								LimitSTR = " OFFSET 0 ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY"
							Else
								LimitSTR = " OFFSET "&trim(GetStatrtVal)&" ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY" 
								'''"limit "&trim(request("Start"))&", "&trim(request("E"))
							End If
							
							CountryQry = CountryQry & "  " &LimitSTR
							
							
							''response.write trim(CountryQry)
							'response.end
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							RSCountry.PageSize = cdbl(rec_per_page)	
							RSCountry.Open CountryQry, Datasource4
							
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							 
							<li class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6 mx-auto mt-2 text-center mb-2 p-1 ">
								<div class="col-12 mx-auto  label  p-2">
									<div class="d-flex justify-content-between align-items-center flex-column">

										<div class="left-block mb-2">
											<%
											Dim Img_Path
											
											If trim(RSCountry("image_path"))<>"" Then
											Img_Path = "https://cbcrawler.marketglass.com/"&trim(RSCountry("image_path"))
											%>
											<img src="<%=trim(Img_Path)%>" class="img-fluid" border="0">
											<%End If
											%>
										</div>

										<div class="right-block">
											<div class="title text-center pl-2">
												<h2><%=trim(RSCountry("First_name"))%> &nbsp;<%=trim(RSCountry("Last_name"))%></h2>
												<h3><%=trim(RSCountry("headline"))%></h3>
												<h3><%=trim(RSCountry("company_name"))%> </h3>
											</div>
										</div>
							
									</div>
							
								</div>
							</li>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<li class='col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 '><font color='red'>No Records Found With this Search</font></li>"
							End If
							set RSCountry = nothing
							
							
							%>	
							</ul>
							
							
						
					</div>
				</div>




		</div>



		</div>
	
</section>

<!--====  End of Page Title  ====-->




<!--============================
=            Footer            =
=============================-->
<!--============================
=            Footer       Start   =
=============================-->
	<!--include file="ASPIncludes/footer.asp"-->
	<footer-component></footer-component>
<!--============================
=            Footer       End   =
=============================-->

  <!-- To Top -->
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  
  <!-- JAVASCRIPTS -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/slick/slick.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="plugins/aos/aos.js"></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
  <script src="plugins/google-map/gmap.js"></script>
  
  <script src="js/script.js"></script>

  <!---scroll animation--->
<script src="./plugins/animated-counter/multi-animated-counter.js"></script>

</body>

<script id="jsbin-javascript">
  ;(function(){
    function id(container){return document.getElementById(container); }
    function loadbar() {
      var ovrl = id("overlay"),
          prog = id("progress"),
          stat = id("progstat"),
          img = document.images,
          c = 0;
          tot = img.length;
  
      function imgLoaded(){
        c += 1;
        var perc = ((100/tot*c) << 0) +"%";
        prog.style.width = perc;
        stat.innerHTML = "Loading <div><span></span></div>"+ "<i>" + perc + "</i>";
        if(c===tot) return doneLoading();
      }
      function doneLoading(){
        ovrl.style.opacity = 0;
        setTimeout(function(){ 
          ovrl.style.display = "none";
        }, 1200);
      }
      for(var i=0; i<tot; i++) {
        var tImg     = new Image();
        tImg.onload  = imgLoaded;
        tImg.onerror = imgLoaded;
        tImg.src     = img[i].src;
      }    
    }
    document.addEventListener('DOMContentLoaded', loadbar, false);
  }());
  </script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#overlay_loading").hide();
	});
</script>
</html>