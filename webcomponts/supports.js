
// CSS SUPPORT COMPONENTS






class SupportsComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
    
    
    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">


	<!-- Mobile Specific Metas
  ================================================== -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Evolv">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
	<meta name="author" content="Evolv ">
	<meta name="generator" content="Evolv">

	<!-- theme meta -->
	<meta name="theme-name" content="Evolv" />

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
	
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
	<link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />

	
	
	<!-- JAVASCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/fancybox/jquery.fancybox.min.js"></script>
	<script src="plugins/syotimer/jquery.syotimer.min.js"></script>
	<script src="plugins/aos/aos.js"></script>
	<!-- google map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
	<script src="plugins/google-map/gmap.js"></script>
	<!--script src="js/script.js"></!--script-->

    
    `
      ;


  }

}

customElements.define('supports-component', SupportsComponent);


