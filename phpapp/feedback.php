<!-- Created by Dragoş Vatră  0743503240  vatradragos@yaoo.com -->
<!-- Start Web Page -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Start <head> elements -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <title>WebDev Evaluation - Feedback</title>
  <link  rel="stylesheet" href="css/bootstrap.min.css"/>
  <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
  <link rel="stylesheet" href="css/main.css">
  <link  rel="stylesheet" href="css/font.css">
  <script src="js/jquery.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
  <!--Start alert message-->
  <?php if(@$_GET['w']) {
    echo'<script>alert("'.@$_GET['w'].'");</script>';}
  ?>
  <!--Stop alert message-->
</head>
<!-- Stop <head> elements -->
<!-- Start <body> elements -->
<body>
  <!-- Start <header> elements -->
  <div class="row header">
    <div class="col-lg-6">
      <span class="logo">WebDev Evaluation</span></div>
    <div class="col-md-2"></div>
    <div class="col-md-4">
  <!-- Start PHP Connection -->
  <?php
  include_once 'dbConnection.php';
  session_start();
    if((!isset($_SESSION['email']))) {
      echo '<a href="#" class="pull-right sub1 btn title3" data-toggle="modal" data-target="#myModal"><span aria-hidden="true"></span>&nbsp;Sign In</a>&nbsp;';
    } else {
      echo '<a href="logout.php?q=feedback.php" class="pull-right sub1 btn title3"><span aria-hidden="true"></span>&nbsp;Sign Out</a>&nbsp;';
    }
  ?>
  <!-- Stop PHP Connection -->
  <a href="index.php" class="pull-right btn sub1 title3"><span aria-hidden="true"></span>&nbsp;Home</a>&nbsp;
  </div>
  </div>

  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content title1">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title title1"><span style="color:orange">Log In</span></h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" action="login.php?q=index.php" method="POST">
            <fieldset>

              <div class="form-group">
                <label class="col-md-3 control-label" for="email"></label>  
                <div class="col-md-6">
                  <input id="email" name="email" placeholder="Your E-mail" class="form-control input-md" type="email">
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-3 control-label" for="password"></label>
                <div class="col-md-6">
                  <input id="password" name="password" placeholder="Your Password" class="form-control input-md" type="password">
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
<!-- Stop <header> elements -->
<!-- Start Form elements -->
<div class="bg1">
  <div class="row">
    <div class="col-md-3"></div>
      <div class="col-md-6 panel" style="background-image:url(image/feedback.jpg); min-height:430px;">
        <h2 style="align:center" style="font-family:'typo'; color:#000066">REPORT A PROBLEM</h2>
      <div style="font-size:14px">
      <?php if(@$_GET['q'])echo '<span style="font-size:18px;"><span aria-hidden="true"></span>&nbsp;'.@$_GET['q'].'</span>';
      else { echo' You can send me your feedback through e-mail on the following e-mail:<br />

                <div class="row">
                  <div class="col-md-1"></div>
                    <div class="col-md-10">
                      <a href="mailto:vatradragos@yahoo.com" style="color:#000000">vatradragos@yahoo.com</a><br /><br />
                    </div>
                    <div class="col-md-1"></div>
                    </div>
                    <p>Or you can directly submit your feedback by filling the enteries below:-</p>
                    <form role="form"  method="post" action="feed.php?q=feedback.php">

                  <div class="row">
                    <div class="col-md-3"><b>Name:</b><br /><br /><br /><b>Subject:</b></div>
                    <div class="col-md-9">
                      <div class="form-group">
                        <input id="name" name="name" placeholder="Your Name" class="form-control input-md" type="text"><br />    
                        <input id="name" name="subject" placeholder="Your Subject" class="form-control input-md" type="text">    
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-3"><b>E-Mail address:</b></div>
                    <div class="col-md-9">
                      <div class="form-group">
                        <input id="email" name="email" placeholder="Your E-mail" class="form-control input-md" type="email">    
                      </div>
                    </div>
                  </div>

                  <div class="form-group"> 
                    <textarea rows="5" cols="8" name="feedback" class="form-control" placeholder="Write your feedback here..."></textarea>
                  </div>

                  <div class="form-group" align="center">
                    <input type="submit" name="submit" value="Submit" class="btn btn-primary" />
                  </div>
                </form>';
      }
      ?>
      </div>
      <div class="col-md-3"></div></div>
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
    <a href="index.php" target="_self">Home</a>
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
            </div>
          </div>
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