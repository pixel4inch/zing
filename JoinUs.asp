<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Zing</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Zing">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Zing ">
  <meta name="generator" content="Zing">

  <!-- theme meta -->
  <meta name="theme-name" content="Zing" />

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
  <link rel="stylesheet" href="plugins/slick/slick.css" />
  <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="plugins/aos/aos.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
  <link href="css/jquery.readall.css" rel="stylesheet" />

  <script>
    function savedomain(){
			var vdomain = $("#txtodoamin").val();
		 if (vdomain != null && vdomain != '') {
		 		alert("Thank you for your valuable contribution.");
		 }else{
		 		alert("Inputs can't be empty");
		 }
	}
  	
  
    function SaveData() {

		//var iSno = rno;			
		var vfirst_name = $("#first_name").val();
		var vlast_name = $("#last_name").val();
		var vemail = $("#email").val();
		var vPassword = $("#password").val();
		var vConfirmpassword=$("#Confirmpassword").val();	
		var vcompany = $("#company").val();
		var vdesignation = $("#designation").val();
		var vLinkedIn = $("#linkedin_url").val();
		var vTwitter = $("#twitter_url").val(); 
		var vYoutube = $("#youtube_url").val(); 
		var vsource_type = $("#source_type").val(); 
		//var vFacebook = $("#Facebook").val();	   
		//var vSeledprimary = document.getElementByName("primarydomainlist").checked;
		var vSeledprimary = $('input[name="primarydomainlist"]:checked').val();
		var selected = new Array();        
            $("#myTable input[type=checkbox]:checked").each(function () {
                selected.push(this.value);
            }); 
       
            if (selected.length > 0) {            
			   selected.join(",");
            }
		var vSeledRelevent = selected;
		var vLoginDomain ='';
		var vcheck_social = $('input[name="check_social"]:checked').val();
		var vlinkedIn_engage = $('input[name="linkedIn_engage"]:checked').val();
		var vfacebook_engage = $('input[name="facebook_engage"]:checked').val();
		var vtwitter_engage = $('input[name="twitter_engage"]:checked').val();
		var vinstagram_engage = $('input[name="instagram_engage"]:checked').val();
		var vyoutube_engage = $('input[name="youtube_engage"]:checked').val();
		
		var checkbox1_check = 0;		
		if($('#acceptprivacy').prop('checked')) {
			checkbox1_check = 1;
		} else {
			checkbox1_check = 0;
		}
   
		
		if (vemail != null && vemail != '' &&  vfirst_name != null && vfirst_name != '' && vlast_name != null && vlast_name != '' && vcompany != null && vcompany != '' && vdesignation != null && vdesignation != '') {
				 if ((vPassword == vConfirmpassword) && (vPassword != '' && vConfirmpassword != null && vConfirmpassword != '')){
					if (checkbox1_check == 1){
						$.ajax({
						  url: "Ajax_AddRegisterUsers.asp",
						  type: "POST",
						  data: 'vSeledRelevent=' + encodeURIComponent(vSeledRelevent) + '&vsource_type='+ encodeURIComponent(vsource_type) +'&vcheck_social='+ encodeURIComponent(vcheck_social) +' &vlinkedIn_engage='+ encodeURIComponent(vlinkedIn_engage) +'&vfacebook_engage='+ encodeURIComponent(vfacebook_engage) +'&vtwitter_engage='+ encodeURIComponent(vtwitter_engage) +'&vinstagram_engage='+ encodeURIComponent(vinstagram_engage) +'&vyoutube_engage='+ encodeURIComponent(vyoutube_engage) +'&vdesignation=' + encodeURIComponent(vdesignation) + '&vSeledprimary=' + encodeURIComponent(vSeledprimary) + '&vYoutube=' + encodeURIComponent(vYoutube) + '&vTwitter=' + encodeURIComponent(vTwitter) + '&vLinkedIn=' + encodeURIComponent(vLinkedIn) + '&vPassword=' + encodeURIComponent(vPassword) + '&vemail=' + encodeURIComponent(vemail) + '&vcompany=' + encodeURIComponent(vcompany) + '&vfirst_name=' + encodeURIComponent(vfirst_name) + '&vlast_name=' + encodeURIComponent(vlast_name) + '',
						  success: function (data) {
							alert(data);
							//alert("Thank you for sign-up.");
						  },
						  error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
						  }
						});
						//window.opener.location.reload(false);
						//window.opener.location.reload()
					}
					else {
					alert("Please accept our privacy policy to continue");
					}
			    }
				else {
				alert("Password/Confirm Password should match & can't be left blank");
				}
	  }
      else {
        alert("Fields marked with * are mandatory");
      }
    }
  </script>

</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">
<!--============================
=            HEADER           =
=============================-->
<header-component></header-component>
<!--============================
    PLACEKEEPTER BANNER
=============================-->
  <section class="section page-title insider py-5   ">
    <div class="container">
      <div class="row tex-center ">
        <div class="col-sm-12 m-auto text-center">
          <!-- Page Title -->
         <%
			Dim PageType
			PageType = ""
			PageType = trim(request("pageType"))
		 %>
			<h1 class="font-display2 main-font-color text-center"> 
		 <%If trim(PageType)<>"" Then
			response.write (trim(ucase(PageType)) & "&nbsp;-&nbsp;")
		 Else
			PageType = "JOIN_US"
		 End If%>  
			CREATE PROFILE & JOIN US
			</h1>
        </div>

        <div class="col-lg-7 col-md-10 col-sm-12 col-12 p-3  m-auto mt-3  shadow-sm border">

          <div class="w-100">
				<div class="col-12 d-flex   justify-content-center flex-column h-100"  style="align-items: baseline;">
                <h4 class="font-display4 mb-0 texxt-center w-100 mb-3"> Edit Profile Picture</h4>                
               </div>
            <form action="#">

              <div class="row position-relative d-flex align-items-center"> 
                <div class="col-12 medium-2 large-2 columns text-center">
                  <div class="circle mx-auto">
                    <img class="profile-pic" src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541">
                  </div>
                  <div class="p-image">
                    <i class="fa fa-camera upload-button"></i>
                     <input class="file-upload" type="file" accept="image/*"/>
                  </div>
               </div>

               
             </form>

          </div>

          <div class="w-100 mt-2" id="formblock">
           


              <hr/>

              <div class="row mx-0">
                <!-- First Name -->
                <div class="col-sm-6 mb-2 p-1">
                  <span class="floating-label">First Name<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1 " type="text" placeholder="" id="first_name" name="first_name" required="">
                </div>
                <!-- Last Name -->
                <div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Last Name<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="text" placeholder="" id="last_name" name="last_name" required="">
                </div>

                <!-- Email -->
                <div class="col-sm-6 mb-2 p-1">
                 <span class="floating-label">Email<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="email" placeholder=" " id="email" name="email" required="">
                </div>
                <!-- Password -->
                <div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Password<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="password" placeholder="" id="password" name="password" required="">
                </div>
				<div class="col-sm-12 mb-2 p-1">
				   <span class="floating-label">Confirm Password<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="password" placeholder="" id="Confirmpassword" name="Confirmpassword" required="">
				</div>
                <!-- Mobile Phone -->
                <div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Company<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="text" placeholder="" id="company" name="company" required="">
                </div>

				 <div class="col-sm-6 mb-2 p-1">
                  <span class="floating-label">Designation<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="text" placeholder="" id="designation" name="designation" required="">
                </div>

                <!-- Website -->
                <!--div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Company URL<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="Website" placeholder="" id="Website"
                    name="Website" required="">
                </div-->

                
                <div class="col-sm-12 mb-2 p-1">
                 <span class="floating-label">LinkedIn URL<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="text" placeholder=" " id="linkedin_url" name="linkedin_url" required="">
                </div>

				<div class="col-sm-12 mb-2 p-1">
                  <span class="floating-label">Twitter Handle<span class="text-danger"></span> </span>
                  <input class="form-control main mb-1" type="text" placeholder=" " id="twitter_url" name="twitter_url" required="">
                </div>
				
				<div class="col-sm-12 mb-2 p-1">
                    <span class="floating-label">YouTube Channel<span class="text-danger"></span> </span>
                  <input class="form-control main mb-1" type="text" placeholder=" " id="youtube_url" name="youtube_url" required="">
                </div>

                 <!-- Website -->
				 <div class="col-sm-12 mb-0 p-1 mt-0 border-bottom pb-2 ">
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="formmandatory">* </span>
                    <p class="font-weight-bold main-font-color mb-0 ml-3">SPEAKING INTERESTS</p>
                    
                  </div>
                </div>
				
				<div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
				<p class="text-left pl-3 mt-0 mb-1">Annual Speaking Engagements </p>            
    
				<div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                  <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="radio" value="5" id="linkedIn_engage" name="speaking"><p>&nbsp;&lt; 5 </p>  </span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="radio" value="5-10" id="linkedIn_engage" name="speaking"><p>&nbsp;5-10 </p></span>
                    <span class="mx-2 d-flex  justify-content-start align-items-center "><input type="radio" value="11-20" id="linkedIn_engage" name="speaking"><p>&nbsp;11-20 </p> </span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="radio" value="20+" id="linkedIn_engage" name="speaking"><p>&nbsp;&gt; 20 </p></span>
                                  
                  </div>
                </div>
				
				<div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
				<p class="text-left pl-3 mt-0 mb-1">Future Speaking Interest </p>            
    
				<div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                  <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="radio" value="Virtual" id="linkedIn_engage" name="Featurespeaking"><p>&nbsp;Virtual </p>  </span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="radio" value="Hybrid" id="linkedIn_engage" name="Featurespeaking"><p>&nbsp;Hybrid </p></span>
                    <span class="mx-2 d-flex  justify-content-start align-items-center "><input type="radio" value="In-Person" id="linkedIn_engage" name="Featurespeaking"><p>&nbsp;In-Person </p> </span>
                   
                                  
                  </div>
                </div>
				 
				 
				 
                <div class="col-sm-12 mb-0 p-1 mt-0 border-bottom pb-2 ">
                  <div class="d-flex justify-content-start align-items-center">
                    <span class="formmandatory">* </span>
					<input type="checkbox" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" class="ml-3"/>
                    <p class="font-weight-bold main-font-color mb-0 ml-2">DOMAIN EXPERTISE</p>
                   
                  </div>
                </div>
                <div class="w-100 collapse  m-2 " id="collapseExample">
                  <div class="col-sm-12 mb-0 p-0 border-bottom">
                    <div>
                      <!--input type="text" id="myInput" class="domain-search" onkeyup="myFunction()" placeholder="Search Domain" title="Type in a name" class="border shadow-sm my-3 col-11 mx-auto" style="width:90%; margin:0 auto; margin-bottom:10px"-->
					  <div class="domain-table-block">
                      <table id="myTable" class="table mb-0   w-100" id="domain-list-table">
                        <tr class="header w-100" style="background-color:#f7e1d7">
                          <th class="text-center py-1   col-6">Domain</th>
                          <th class="text-center py-1   col-3 text-center">Primary</th>
                          <th class="text-center py-1   col-3 text-center">Relevant</th>
                        </tr>
                        <tbody id="domain-list">

                          <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
                          <script>
                            $(document).ready(function () {
                              $.getJSON("./data/DomainName.json", function (data) {
                                var output = '';
                                console.log(data)
                                $.each(data.domainlist, function (key, value) {
                                  output += `
                                      <tr class='p-0 mb-0 mt-2" style="margin-bottom:0px">
                                        <td class="text-left py-1 border-0  col-6">` + value.Name + `</td>
                                        <td class="text-center py-1  border-0 col-3"> <input type="radio" value="`+ value.Name + `" id="primarydomainlist" name="primarydomainlist"/> </td>
                                        <td class="text-center py-1 border-0 col-3"> <input type="checkbox" value="`+ value.Name + `" id="secondarydomainlist_` + value.Id + `" name="secondarydomainlist"/> </td>
                                      </tr> `;
                                });
                                $('#domain-list').html(output);
                              }).fail(function () {
                                document.write("An error has occurred.");
                              });
                            });
                          </script>
						   <tr>
							<td class="text-left py-1  pl-4 col-9"><input type="text" name="new_domain" id="new_domain"></td>
							<td class="text-center py-1 col-3"> <input type="radio" value="" id="new_domain_primary" name="new_domain_primary"/> </td>
							<td class="text-center py-1 col-3"> <input type="checkbox" value="" id="new_domain_secondary" name="new_domain_secondary"/> </td>
						  </tr>
                        </tbody>
                      </table>
					  
					  
					  
					  </div>
                    </div>
					
					<div class="row mx-0 border-top mt-3">
                        <div class="d-flex justify-content-center w-100 my-3 align-items-center">

                            <lable class="mx-3 para-display2 text-uppercase font-weight-bold">OTHER</lable>
                            <input type="text" id="txtodoamin" name="txtodoamin" >
							
							
							
							
                            <button class="btn btn-sm text-white " type="submit" onclick="savedomain()">SUBMIT</button>

                    </div></div>
                  </div>
                </div>
                <div class="col-sm-12 mb-0 p-1 mt-1  pb-2 d-flex  align-items-center ml-3">
                   <input type="checkbox" class="form-check-input ml-0" id="check_social" name="check_social"  />
                   <p class="font-weight-bold main-font-color mb-0 ml-4 mt-1">I will support your programs on  social media</p>
                    <br/>
                </div>               
                <div class="row mx-0" id="collapseblock">
				 <p class=" main-font-color mb-0  ml-4 pl-1">&nbsp;&nbsp;&nbsp;Select preferred social media</p>
                  <div class="d-flex  justify-content-start align-items-center ml-4 pl-2 w-100 mt-2 mb-3 ">
                  <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="checkbox" value="Yes" id="linkedIn_engage" name="linkedIn_engage"/><p>&nbsp;LinkedIn</p></span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="checkbox" value="Yes" id="facebook_engage" name="facebook_engage"/><p>&nbsp;Facebook</p></span>
                    <span class="mx-2 d-flex  justify-content-start align-items-center "><input type="checkbox" value="Yes" id="twitter_engage" name="twitter_engage"/><p>&nbsp;Twitter</p></span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="checkbox" value="Yes" id="instagram_engage" name="instagram_engage"/><p>&nbsp;Instagram</p></span>
                   <span class="mx-2 d-flex  justify-content-start align-items-center "> <input type="checkbox" value="Yes" id="youtube_engage" name="youtube_engage"/><p>&nbsp;YouTube</p> </span>               
                  </div>  

                <!--div class="w-100 collapse   m-2 " id="social_support1" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="LinkedIn" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support2" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder=" Facebook" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support3" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Twitter" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support4" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Instagarm" id="LinkedIn" name="LinkedIn" required="">
                </div>
                <div class="w-100 collapse   m-2 " id="social_support5" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Youtube" id="LinkedIn" name="LinkedIn" required="">
                </div-->
				</div>

				<div class="w-100 pt-2 border-top">
				<p class=" main-font-color mb-0 font-weight-bold text-left mt-2  ml-3 pl-1">What influencer categories best represents you?</p>
				
						<div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_enterpreneur" name="check_enterpreneur"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Tech Entrepreneur </p>
						</div>   

						<div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_investor" name="check_investor"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Venture Investor </p>
						</div>   

						<div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_excutive" name="check_excutive"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Enterprise Executive </p>
						</div>  

						<div class="col-sm-12 mb-0  pl-1 d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_social" name="check_social"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Ecosystem Facilitator </p>
						</div>   

						<div class="col-sm-12 mb-0  mt-0  pl-1 d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_social" name="check_social"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Academia  </p>
						</div>  

						<div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_media" name="check_media"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Media  </p>
						</div>  
						<div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
						   <input type="checkbox" class="form-check-input ml-0" id="check_other" name="check_other"  />
						   <p class=" main-font-color mb-0 ml-4 mt-1">Other</p>
						</div>  				
				</div>
				<div class="w-100 pt-2 border-top">
					<div class="d-flex align-items-center mt-2 ml-3 pl-1">
						 <input type="checkbox" id="acceptprivacy" name="acceptprivacy" class="mr-2">
						 <p>I have read and agree to the Zing Program  <a href="https://www.zing.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.zing.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 
					</div>
				</div>

				<input type="hidden" name="source_type" id="source_type" value="<%=PageType%>">

                <!-- Submit Button -->
                <div class="col-12 text-center">
                  <button class="btn btn-main-md   mx-auto py-2 px-2 my-4" onclick="SaveData()">SUBMIT</button>
                  
                </div>
                <p class="text-left mr-2" style="font-size:13px;font-style:italic;">Fields marked  <span
                    style="color:red">*</span> are mandatory</p>
              </div>
            </form>
          </div>
          <!-- Page Title -->

        </div>

      </div>
    </div>
  </section>




  <!--============================
	           Footer            
=============================-->

  <footer-component></footer-component>


  <!---============================
           ScrollTop        
=============================--->

  <scrolltop-component></scrolltop-component>

  <!-- JAVASCRIPTS -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="./js/imageload.js"></script>
  <script src="plugins/slick/slick.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="plugins/aos/aos.js"></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
  <script src="plugins/google-map/gmap.js"></script>

  <script src="js/script.js"></script>
  <script src="./js/submenu_select.js"></script>
  <script src="./js/jquery.readall.js"></script>


  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  <script src="./webcomponts/banner.js"></script>

  <script>
    $('.textless').readall({
      showheight: null,
      showrows: 8
    });


  </script>


  <script>
    function myFunction() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
  </script>



  <script type="text/javascript"
    src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

  <script type="text/javascript">
    $(document).ready(function () {
      $('#google_translate_element').bind('DOMNodeInserted', function (event) {
        $('.goog-te-menu-value span:first').html('LANGUAGE');
        $('.goog-te-menu-frame.skiptranslate').load(function () {
          setTimeout(function () {
            $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');
          }, 100);
        });
      });
    });
</script>


      <script type="text/javascript">
        function googleTranslateElementInit() {
          new google.translate.TranslateElement({ pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
}
  </script>
</body>

</html>