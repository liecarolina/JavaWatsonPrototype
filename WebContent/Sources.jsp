<!DOCTYPE html>
<html>
<head>
	<title>${myapp.title} </title>
	<meta charset="utf8">  
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
   <link href="static/bootstrap.min.css" rel="stylesheet" media="screen">
   <link href="static/bootstrap-responsive.css" rel="stylesheet">
   <link href="static/bootstrap.css" rel="stylesheet">

  <style type="text/css">
	body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
	
      }
	
	/* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 900px;
	border-style: solid;
	border-color: transparent;
	background-color: #D8D8D8	;
	z-index: 9;
	height : 100%;
	-moz-border-radius: 15px;
	border-radius: 15px;
	
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

	.sidebar-nav {
        padding: 20px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
	
  </style>

</head>
<body>

  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          
        <a class="brand pull-left" href="/home"><em>${myapp.title} </em></a>
	  
          <div class="nav-collapse collapse">
           
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>  <!-- end of div for nav bar-->
  
  <div class="container">
  <!-- <table class="table table-hover">
  <tr> -->
  <div class="hero-unit">
  <div>
  <h2><em>Bibliography</em></h2> </div>
  <br/>
  
		<img src="static/images/ibm_logo.png" class="sale-photo">
	
		<h4>
This watson prototype was made using Eclipse using Bluemix's server. It was based on IBM's tutorials and documents listed below.
		</h4>
	
		<div id="description">

www.ibm.com/watsondevelopercloud
http://www.ibm.com/cloud-computing/bluemix/
http://www.ibm.com/developerworks/learn/cloud/bluemix/quick-start/index.html
https://www.ibm.com/developerworks/cloud/library/cl-bluemixfoundry/
https://www.ibm.com/blogs/watson/2016/05/top-3-building-watson-webinars/
http://www.ibm.com/watson/building-with-watson-webinar.html
https://www.ibm.com/developerworks/br/cloud/library/cl-bluemix-fundamentals-create-and-deploy-a-java-app-to-the-cloud/index.html
https://developer.ibm.com/recipes/tutorials/bluemix-watson-apis-quickstart-using-java-sdk/#r_step6		</div>
	

  

 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>
