<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<style>
.Large
{
font-size: 16pt;
height: 40px;
}
</style>
<script type="text/JavaScript" src="js/slimbox2.js"></script> 

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>

<script type="text/javascript">

function valid()
{
var a=document.s.name.value;
if(a=="")
{
alert("Enter Your name");
document.s.name.focus();
return false;
}

var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}


var c=document.s.dob.value;
	if(c=="")
	{
	alert ("pick date");
	document.s.dob.focus();
	return false;
	}
if(document.s.log.selectedIndex==0)
{
alert("Select Gender");
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.mail.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.mail.focus();
return false;
}
var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.s.mob.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}
}

</script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		
    <div id="header" class="container"> 
      <div id="logo"> <a href="#"> 
        <p>&nbsp;</p>
        <img src="images/title.png"></a> </div>
    </div>
		
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="post">
				<table width="800">
      <td width="261"><img src="images/sign-up.png"></td>
      <td width="527"><form name="s" action="blog_signup1.jsp" method="get" onSubmit="return valid()">
          <table align="left" background="images/02.jpg" width="510">
            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="50">&nbsp;</td>
              <td width="147"><p><font face="Times New Roman"  size="+1" color="#666666"><strong>Name</strong></font></p></td>
              <td width="297"><p> 
                  <input type="text" name="name">
                </p></td>
            </tr>
            <tr>
              <td width="50">&nbsp;</td>
              <td><p> <font face="Times New Roman"  size="+1" color="#666666"> 
                  <strong>Password</strong></font></p></td>
              <td><p>
                  <input type="password" name="pass">
                </p></td>
            </tr>
            <tr>
              <td width="50">&nbsp;</td>
              <td><p><font face="Times New Roman"  size="+1" color="#666666"><strong>Birthday</strong></font></p></td>
              <td><p>
                  <input id="demo1" type="text" size="20" name="dob">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="20" height="20" border="0" alt="Pick a date"></a></p></td>
            </tr>
            <tr> 
              <td width="50">&nbsp;</td>
              <td><p><font face="Times New Roman"  size="+1" color="#666666"><strong>I 
                  Am</strong></font></p></td>
              <td><p>
                  <select name="log">
                    <option value="0">select sex:</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                  </select>
                </p></td>
            </tr>
            <tr> 
              <td width="50">&nbsp;</td>
              <td><p><font face="Times New Roman"  size="+1" color="#666666"><strong>Email 
                  Id</strong></font></p></td>
              <td><p>
                  <input type="text" name="mail">
                </p></td>
            </tr>
            <tr> 
              <td width="50">&nbsp;</td>
              <td><p><font face="Times New Roman"  size="+1" color="#666666"><strong>Mobile</strong></font></p></td>
              <td><p>
                  <input type="text" name="mob">
                </p></td>
            </tr>
            <tr> 
              <td width="50">&nbsp;</td>
              <td></td>
              <td><p>
                  <input type="submit" name="s" value="submit" class="b1" >
                  <input type="reset" name="r" value="clear" class="b1">
                </p></td>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
        </form></td>
    </table>
        
      </div>
			<div class="post">
				<div class="post-title">
					
          
		  		
				</div>
			</div>
		</div>
		<div id="sidebar1">
			<div>
				
				</div>
		</div>
	</div>
</div>
<div id="footer">
	
</div>
</body>
</html>
