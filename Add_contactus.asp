<!DOCTYPE html>
<%@Language="VBScript"%>
<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->
<!---WEB COMPONETNS-->
<script src="./webcomponts/headerComponents.js"></script>
<script src="./webcomponts/FooterComponent.js"></script>
<script src="./webcomponts/ScrollToTop.js"></script>
<script src="./webcomponts/dummytext.js"></script>
<html lang="en">
  <head>
    <% dim PGreferer PGreferer=trim(Request.ServerVariables("HTTP_REFERER")) ''
    response.write "Referer Page = " & PGreferer %>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8" />
    <title>Zing</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Zing" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=5.0"
    />
    <meta name="author" content="Zing " />
    <meta name="generator" content="Zing" />

    <!-- theme meta -->
    <meta name="theme-name" content="Zing" />
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

    <!-- PLUGINS CSS STYLE -->
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
    <link rel="stylesheet" href="plugins/slick/slick.css" />
    <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
    <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="plugins/aos/aos.css" />
    <!-- CUSTOM CSS -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/custome.css" rel="stylesheet" />
    <link
      href="./plugins/jsvectormap-master/dist/css/jsvectormap.css"
      rel="stylesheet"
    />

    <script
      src="https://code.jquery.com/jquery-2.1.1.min.js"
      type="text/javascript"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
      .clsmandatory {
        position: absolute !important;
        left: 10px;
        top: 8px;
        font-weight: bold;
        color: red !important;
      }

      .formmandatory {
        position: absolute;
        left: 10px;
        top: 5px;
        color: red;
        font-size: 13px;
      }
    </style>
    <script>
      function SaveData() {
        //var iSno = rno;
        var vfirst_name = $("#first_name").val();
        var vlast_name = $("#last_name").val();
        var vcompany = $("#company").val();
        var vtitle = $("#title").val();
        var vemail = $("#email").val();
        var vphone = $("#phone").val();
        var page_source = $("#page_source").val();

        if (vemail != null && vemail != "") {
          $.ajax({
            url: "Ajax_AddContacts.asp",
            type: "POST",
            data:
              "page_source=" +
              encodeURIComponent(page_source) +
              "&vphone=" +
              encodeURIComponent(vphone) +
              "&vemail=" +
              encodeURIComponent(vemail) +
              "&vtitle=" +
              encodeURIComponent(vtitle) +
              "&vcompany=" +
              encodeURIComponent(vcompany) +
              "&vfirst_name=" +
              encodeURIComponent(vfirst_name) +
              "&vlast_name=" +
              encodeURIComponent(vlast_name) +
              "",
            success: function (data) {
              //alert(data);
              //alert('Thanks for submitting!');
            },
            error: function (xhr, ajaxOptions, thrownError) {
              alert(xhr.status);
              alert(thrownError);
              alert(xhr.responseText);
            },
          });

          //window.opener.location.reload(false);
          //window.opener.location.reload()
        } else {
          alert("values can't be left blank");
        }
      }
    </script>
  </head>

  <body
    class="body-wrapper d-flex align-items-center"
    data-spy="scroll"
    data-target=".privacy-nav"
  >
    <!-- Content -->
    <div class="w-100 mx-0">
      <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3">
        <div class="row mx-0 mt-3" id="formblock">
          <!-- Fname -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              required=""
              id="first_name"
              name="first_name"
            />
            <span class="floating-label">
              First Name <span class="text-danger">*</span>
            </span>
          </div>
          <!-- LName -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              required=""
              id="last_name"
              name="last_name"
            />
            <span class="floating-label">
              Last Name <span class="text-danger">*</span>
            </span>
          </div>

          <!-- Designation -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              required=""
              id="title"
              name="title"
            />
            <span class="floating-label">
              Position <span class="text-danger">*</span>
            </span>
          </div>
          <!-- company -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              required=""
              id="company"
              name="company"
            />
            <span class="floating-label">
              Company <span class="text-danger">*</span>
            </span>
          </div>

          <!-- email -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              required=""
              id="email"
              name="email"
            />
            <span class="floating-label">
              Email <span class="text-danger">*</span>
            </span>
          </div>
          <!-- phone -->
          <div class="col-sm-6 mb-3 px-1">
            <input
              class="form-control w-100 border-radius-0"
              type="text"
              id="phone"
              name="phone"
            />
            <span class="floating-label"> Phone </span>
          </div>
          <p
            class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0 mandatory-msg"
          >
            Fields marked <span style="color: red">*</span> are mandatory
          </p>
          <!-- Submit Button -->
          <input
            type="hidden"
            name="page_source"
            id="page_source"
            value="<%=PGreferer%>"
          />

          <div class="col-12 text-center my-4">
            <button
              class="btn btn-main-md mx-auto py-2 px-2"
              onclick="SaveData();"
            >
              Submit
            </button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
