<!DOCTYPE html>
<html>
<head>
	<title> ${myapp.title} </title>
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
  .preview {
  	float: left;
	margin-right: 20px;
  }    
  .preview .thumb {
    border: 0 none;
    margin-top: 5px;
    width: 252px;
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
  <h2 class="text-center"><em>${myapp.title}</em></h2> </div>
  	<img src="static/images/watson.png" class="center-block" height="250" width="250">
  <br/>
  
 		<p>This prototype was created based on multiples tutorials that can be checked on the sources page. This Application makes use of two Watson API's that can be checked bellow.
 		
			</p>
		<div class="row">
            <div class="col-lg-7 col-md-7 col-xs-12">
                <h2>Let's start!</h2>
                <div class="well">
                    <form method="get" class="form-horizontal">
                        <fieldset>
                            <div class="row">
                                <div class="col-lg-12 col-xs-12">
                                    <label for="textArea" class="btn-space" >  Enter or paste the text to be synthesized into speech:</label>
                                    <textarea id="textArea" name="text" rows="6" required class="form-control btn-space"></textarea><span class="help-block btn-space"><small>Be aware that the selected voice and the text you wrote need to match. Mixing languages do not return any valid result.</small></span>
                                </div>
                            </div>
                            <div style="margin-bottom:30px;" class="row">
                                <label for="voice" class="col-lg-12 col-xs-12 control-label ">Select the Voice model:</label>
                                <div class="col-lg-12 col-xs-12">
                                    <select class="select-voice btn-space" id="voice" style="width:100%" name="voice" required class="form-control">
                                    </select>
                                </div>
                            </div>
                            
                           
                            <div class="row">
                                <div class="col-lg-4 col-xs-4 download-container">
                                    <input value="Download" class="btn btn-block download-button btn-space">
                                </div>
                                <div class="col-lg-4 col-xs-4 text-center"></div>
                                <div class="col-lg-4 col-xs-4 ie-speak">
                                
                                    <input value="Speak" class="btn btn-block speak-button btn-space">
                                    
                                    <div class="arrow-box" >
                                    </div>                     
                                    
                                    <div  id="check" class="checkbox btn-space">
    								<label>
      								<input type="checkbox" value="false" name="check"> <h5>Translate</h5>
      								<span class="help-block btn-space"><small>Be aware that the Translation function will only work with texts in English. Mixing languages do not return any valid result.</small></span>
    								</label>
  									</div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                    <form method="get" class="form-horizontal">
                        <fieldset>
                            
                            <div style="margin-bottom:30px;" class="row">
                                <label for="language" class="col-lg-12 col-xs-12 margin-left ">Select the Language you want to translate your text model:</label>
                                <div class="col-lg-12 col-xs-12">
                                    <select class="select-language btn-space" id="language" style="width:100%" name="language" required class="form-control">
                                    </select>
                                </div>
                            </div>
                             
                        </fieldset>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-xs-12">
                <h2>Output</h2>
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div style="display:none" class="well result">
                            <div class="text-center">
                                <audio autoplay preload="auto" autobuffer controls class="audio"></audio>
                            </div>
                            <div><span class="help-block">The synthesized audio is streamed to the client as it is being produced, using the HTTP chunked encoding. The audio is returned in the <a>OGG </a> format.</span>
                            </div>
                        </div>
                        <div style="display:none" class="well error">
                            <div class="form-group row">
                                <div class="col-lg-12 col-xs-12">
                                    <p class="errorMsg">Error processing the request.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	
		<div>
			
			<div class="preview">
				<a href="Sources">
					Sources<br>
					<img src="static/images/noun_1171.png" class="img-rounded" height="60" width="80">
				</a>
			</div>
			
			
		
		</div> 
		<p style="clear:both"></p>
  

 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  <script type="text/javascript" src="js/browser-detect.js"></script>
  <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="js/constants.js"></script>
  <script type="text/javascript" src="js/demo.js"></script>
</body>
</html>
