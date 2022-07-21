<!-- Created by Dragoş Vatră  0743503240  vatradragos@yaoo.com -->
<!-- Start Web Page -->
<!DOCTYPE html PUBLIC>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Start <head> elements -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WebDev Evaluation - Account</title>
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
</head>
<!-- Stop <head> elements -->
<?php
include_once 'dbConnection.php';
?>
<!-- Start <body> elements -->
<body>
  <!-- Start <header> elements -->
  <div class="header">
    <div class="row">
      <div class="col-lg-6">
        <span class="logo">WebDev Evaluation</span></div>
          <div class="col-md-4 col-md-offset-2">
            <?php
              include_once 'dbConnection.php';
                session_start();
                if(!(isset($_SESSION['email']))){
                header("location:index.php");
              } else {
                $name = $_SESSION['name'];
                $email=$_SESSION['email'];
                include_once 'dbConnection.php';
                echo '<span class="pull-right top title1" ><span class="log1"><span aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <a href="account.php?q=1" class="log log1">'.$name.'</a>&nbsp;|&nbsp;<a href="logout.php?q=account.php" class="log"><span aria-hidden="true"></span>&nbsp;Signout</button></a></span>';
              }
              ?>
          </div>
        </div>
      </div>        
    <div class="bg">
      <nav class="navbar navbar-default title1">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>Account</b></a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="account.php?q=1"><span aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
              <li <?php if(@$_GET['q']==2) echo'class="active"'; ?>><a href="account.php?q=2"><span aria-hidden="true"></span>&nbsp;History</a></li>
              <li <?php if(@$_GET['q']==3) echo'class="active"'; ?>><a href="account.php?q=3"><span  aria-hidden="true"></span>&nbsp;Ranking</a></li>
              <li class="pull-right"> <a href="logout.php?q=account.php"><span aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Signout</a></li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter your tag(s) ">
              </div>
              <button type="submit" class="btn btn-default"><span aria-hidden="true"></span>&nbsp;Search</button>
            </form>
          </div>
        </div>
      </nav>
  <!-- Stop <header> elements -->
  <!-- Start Table elements -->
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <?php if(@$_GET['q']==1) {
        $result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
        echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
        <tr><td><b>S.N.</b></td><td><b>Topic</b></td><td><b>Total question</b></td><td><b>Marks</b></td><td><b>Time limit</b></td><td></td></tr>';
        $c=1;
        while($row = mysqli_fetch_array($result)) {
	        $title = $row['title'];
	        $total = $row['total'];
	        $sahi = $row['sahi'];
          $time = $row['time'];
	        $eid = $row['eid'];
          $q12=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
          $rowcount=mysqli_num_rows($q12);	
          if($rowcount == 0){
	        echo '<tr><td>'.$c++.'</td><td>'.$title.'</td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
	        <td><b><a href="account.php?q=quiz&step=2&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
          } else {
            echo '<tr style="color:#99cc32"><td>'.$c++.'</td><td>'.$title.'&nbsp;<span title="This quiz is already solve by you" aria-hidden="true"></span></td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
	          <td><b><a href="update.php?q=quizre&step=25&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1" style="margin:0px;background:red"><span aria-hidden="true"></span>&nbsp;<span class="title1"><b>Restart</b></span></a></b></td></tr>';
          }
        }
        $c=0;
        echo '</table></div></div>';
        }
        ?>
        <!-- Start Quiz elements -->
        <?php
        if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
          $eid=@$_GET['eid'];
          $sn=@$_GET['n'];
          $total=@$_GET['t'];
          $q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
          echo '<div class="panel" style="margin:5%">';
          while($row=mysqli_fetch_array($q) ) {
            $qns=$row['qns'];
            $qid=$row['qid'];
            echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b><br /><br />';
          }
          $q=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
          echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal"><br />';
          while($row=mysqli_fetch_array($q) ) {
            $option=$row['option'];
            $optionid=$row['optionid'];
            echo'<input type="radio" name="ans" value="'.$optionid.'">'.$option.'<br /><br />';
          }
          echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
        }
        //result display
        if(@$_GET['q']== 'result' && @$_GET['eid']) {
          $eid=@$_GET['eid'];
          $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error157');
          echo  '<div class="panel"><center><h1 class="title" style="color:#660033">Result</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';
          while($row=mysqli_fetch_array($q) ) {
            $s=$row['score'];
            $w=$row['wrong'];
            $r=$row['sahi'];
            $qa=$row['level'];
            echo '<tr style="color:#66CCFF"><td>Total Questions</td><td>'.$qa.'</td></tr>
            <tr style="color:#99cc32"><td>right Answer&nbsp;<span aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
            <tr style="color:red"><td>Wrong Answer&nbsp;<span aria-hidden="true"></span></td><td>'.$w.'</td></tr>
            <tr style="color:#66CCFF"><td>Score&nbsp;<span aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
            }
          $q=mysqli_query($con,"SELECT * FROM rank WHERE  email='$email' " )or die('Error157');
          while($row=mysqli_fetch_array($q) ) {
            $s=$row['score'];
            echo '<tr style="color:#990000"><td>Overall Score&nbsp;<span aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
            }
          echo '</table></div>';
          }
        ?>
      <!-- Stop Quiz elements -->
        <?php
        //start history elements
        if(@$_GET['q']== 2) {
          $q=mysqli_query($con,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');
          echo  '<div class="panel title">
          <table class="table table-striped title1" >
          <tr style="color:red"><td><b>S.N.</b></td><td><b>Quiz</b></td><td><b>Question Solved</b></td><td><b>Right</b></td><td><b>Wrong<b></td><td><b>Score</b></td>';
          $c=0;
        while($row=mysqli_fetch_array($q) ) {
          $eid=$row['eid'];
          $s=$row['score'];
          $w=$row['wrong'];
          $r=$row['sahi'];
          $qa=$row['level'];
          $q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');
            while($row=mysqli_fetch_array($q23) ) {
              $title=$row['title'];
            }
          $c++;
          echo '<tr><td>'.$c.'</td><td>'.$title.'</td><td>'.$qa.'</td><td>'.$r.'</td><td>'.$w.'</td><td>'.$s.'</td></tr>';
        }
        echo'</table></div>';
        }
      //stop history elements
      //start ranking elements
        if(@$_GET['q']== 3) {
          $q=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');
          echo  '<div class="panel title"><div class="table-responsive">
          <table class="table table-striped title1" >
          <tr style="color:red"><td><b>Rank</b></td><td><b>Name</b></td><td><b>Gender</b></td><td><b>Company</b></td><td><b>Score</b></td></tr>';
          $c=0;
          while($row=mysqli_fetch_array($q) ) {
            $e=$row['email'];
            $s=$row['score'];
            $q12=mysqli_query($con,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
          while($row=mysqli_fetch_array($q12) ) {
            $name=$row['name'];
            $gender=$row['gender'];
            $company=$row['company'];
          }
          $c++;
          echo '<tr><td style="color:#99cc32"><b>'.$c.'</b></td><td>'.$name.'</td><td>'.$gender.'</td><td>'.$company.'</td><td>'.$s.'</td><td>';
        }
        echo '</table></div></div>';}
        ?>
      <!-- Stop Ranking elements -->
      </div>
    </div>
  </div>
</div>
<!-- Stop Table elements -->
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