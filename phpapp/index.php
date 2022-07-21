<!-- Created by Dragoş Vatră  0743503240  vatradragos@yaoo.com -->
<!-- Start Web Page -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Start <head> elements -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WebDev Evaluation - Index - Created and built by Dragoș Vatră</title>
		<link rel="shortcut icon" type="image/png" href="favicon/favicon.png"/>
    <link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
    <link rel="stylesheet" href="css/main.css">
    <link  rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <!--Start alert message-->
    <?php if(@$_GET['w'])
    {echo'<script>alert("'.@$_GET['w'].'");</script>';}
    ?>
    <!--Stop alert message-->
    <!--Start Form Validation-->
    <script>
    function validateForm() {
    var y = document.forms["form"]["name"].value;	
    var letters = /^[A-Za-z]+$/;if (y == null || y == "") {
      alert("Name must be filled out.");return false;
      }
    var z =document.forms["form"]["college"].value;if (z == null || z == "") {
      alert("college must be filled out.");return false;
      }
    var x = document.forms["form"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
      alert("Not a valid e-mail address.");return false;
      }
    var a = document.forms["form"]["password"].value;
      if(a == null || a == ""){
        alert("Password must be filled out");return false;
        }if(a.length<5 || a.length>25){
          alert("Passwords must be 5 to 25 characters long.");return false;
          }
    var b = document.forms["form"]["cpassword"].value;
      if (a!=b){alert("Passwords must match.");return false;}
      }
    </script>
    <!--Stop Form Validation-->
</head>
<!-- Stop <head> elements -->
<!-- Start <body> elements -->
<body>
  <!-- Start <header> elements -->
  <div class="header">
    <div class="row">
      <div class="col-lg-6"><span class="logo">WebDev Evaluation</span></div>
      <div class="col-md-2 col-md-offset-4">
        <a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="title1"><b>Sign In</b></span></a>
      </div>
      
        <div class="modal fade" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content title1">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title title1"><span style="color:black">Log In</span></h4>
              </div>

          <div class="modal-body">
            <form class="form-horizontal" action="login.php?q=index.php" method="POST">
              <fieldset>

                  <div class="form-group">
                    <label class="col-md-3 control-label" for="email"></label>  
                    <div class="col-md-6">
                      <input id="email" name="email" placeholder="Enter your email-id" class="form-control input-md" type="email">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-md-3 control-label" for="password"></label>
                      <div class="col-md-6">
                        <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">
                      </div>
                  </div>
                </div>

                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary">Log in</button>
                  
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Stop <header> elements -->
<!-- Start Form elements -->
<div class="bg1">
  <div class="row">
    <div class="col-md-7"></div>
      <div class="col-md-4 panel"> 
        <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
          <fieldset>

            <div class="form-group">
              <label class="col-md-12 control-label" for="name"></label>  
                <div class="col-md-12">
                  <input id="name" name="name" placeholder="Your Name" class="form-control input-md" type="text">
                </div>
            </div>

            <div class="form-group">
              <label class="col-md-12 control-label" for="gender"></label>
                <div class="col-md-12">
                  <select id="gender" name="gender" placeholder="Enter your gender" class="form-control input-md" >
                  <option value="Male">Select Gender</option>
                  <option value="M">Male</option>
                  <option value="F">Female</option> </select>
                </div>
              </div>

            <div class="form-group">
              <label class="col-md-12 control-label" for="name"></label>  
                <div class="col-md-12">
                  <input id="college" name="college" placeholder="Your Company" class="form-control input-md" type="text">
                </div>
            </div>

            <div class="form-group">
              <label class="col-md-12 control-label title1" for="email"></label>
                <div class="col-md-12">
                  <input id="email" name="email" placeholder="Your E-mail" class="form-control input-md" type="email">
                </div>
              </div>

            <div class="form-group">
              <label class="col-md-12 control-label" for="mob"></label>  
                <div class="col-md-12">
                  <input id="mob" name="mob" placeholder="Your Mobile Number" class="form-control input-md" type="number">
                </div>
              </div>

            <div class="form-group">
              <label class="col-md-12 control-label" for="password"></label>
                <div class="col-md-12">
                  <input id="password" name="password" placeholder="Your Password" class="form-control input-md" type="password">
                </div>
            </div>

            <div class="form-group">
              <label class="col-md-12control-label" for="cpassword"></label>
                <div class="col-md-12">
                  <input id="cpassword" name="cpassword" placeholder="Confirm Password" class="form-control input-md" type="password">
                </div>
              </div>

            <?php if(@$_GET['q7'])
            { echo'<p style="color:red;font-size:15px;">'.@$_GET['q7'];}?>

            <div class="form-group">
              <label class="col-md-12 control-label" for=""></label>
                <div class="col-md-12"> 
                  <input  type="submit" class="sub" value="Sign Up" class="btn btn-primary"/>
                </div>
            </div>

          </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Stop Form elements -->
<!-- Start <footer> elements -->
<div class="row footer">
  <div class="col-md-3 box">
    <a href="https://dragosvatra.ro/" target="_blank">Portfolio</a>
  </div>
  <div class="col-md-3 box">
    <a href="#" data-toggle="modal" data-target="#developers">About Me</a>
  </div>
  <div class="col-md-3 box">
    <a href="#" data-toggle="modal" data-target="#login">Admin Login</a>
  </div>
  <div class="col-md-3 box">
    <a href="feedback.php" target="_self">Feedback</a>
  </div>
</div>

<div class="row footer text-center">
  <div class="col-md-12 box text-center">
    <a href="https://dragosvatra.ro/" target="_blank">Created by Dragoş Vatră © 2021-2022 All rights reserved</a>
  </div>
</div>

<div class="modal fade title1" id="developers">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" style="font-family:'typo' "><span style="color:black">Web Developer</span></h4>
      </div>
	  
      <div class="modal-body">
        <p>
		      <div class="row">
		        <div class="col-md-4">
		          <img src="image/profile.jpg" width=100 height=100 alt="Dragoș Vatră" class="img-rounded">
		        </div>
		      <div class="col-md-5">
		        <a href="https://dragosvatra.ro/" style="color:#202020; font-family:'typo' ; font-size:18px" title="Visit My Portfolio" target="_blank">Dragos Vatra</a>
		        <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+04 743503240</h4>
		        <h4 style="font-family:'typo' ">vatradragos@yahoo.com</h4>
		        <h4 style="font-family:'typo' ">  </h4></div></div>
		    </p>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:black;font-family:'typo' ">LOGIN</span></h4>
      </div>

      <div class="modal-body title1">
        <div class="row">
          <div class="col-md-3"></div>
          <div class="col-md-6">

            <form role="form" method="post" action="admin.php?q=index.php">
              <div class="form-group">
                <input type="text" name="uname" maxlength="20"  placeholder="Admin user id" class="form-control"/> 
              </div>

              <div class="form-group">
                <input type="password" name="password" maxlength="15" placeholder="Password" class="form-control"/>
              </div>

              <div class="form-group" style="align:center">
                <input type="submit" name="login" value="Login" class="btn btn-primary" />
              </div>
            </form>
          </div>
          
          <div class="col-md-3"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Stop <footer> elements -->
</body>
<!-- Stop <body> elements -->
</html>
<!-- Stop Web Page -->