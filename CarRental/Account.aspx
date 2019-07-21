<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="CarRental.Account" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        @charset "utf-8";


@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css);
@import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
                @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);

@import url(https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css);
@import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
                @import url(https:////maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css);

@import url(https:////maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css);


div.main{
     background-image: url("https://wallpapercave.com/wp/KOV6pgW.jpg");
    background-attachment: fixed;
   height: 100%;
width:100%;
}

[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

/* ---------- GENERAL ---------- */

* {
  box-sizing: border-box;
    margin:0px auto;

  &:before,
  &:after {
    box-sizing: border-box;
  }

}

body {
   
    color: #606468;
  font: 87.5%/1.5em 'Open Sans', sans-serif;
  margin: 0;
}

a {
	color: #eee;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

input {
	border: none;
	font-family: 'Open Sans', Arial, sans-serif;
	font-size: 14px;
	line-height: 1.5em;
	padding: 0;
	-webkit-appearance: none;
}

p {
	line-height: 1.5em;
}



.container {
  left: 50%;
  position: fixed;
  top: 50%;
  transform: translate(-50%, -50%);
}


#login form{
	width: 250px;
}
#login, .logo{
    display:inline-block;
    width:40%;
}
#login{
border-right:1px solid #fff;
  padding: 0px 22px;
  width: 59%;
}
.logo{
color:#fff;
font-size:50px;
  line-height: 125px;
}

#login form span.fa {
	background-color: #fff;
	border-radius: 3px 0px 0px 3px;
	color: #000;
	display: block;
	float: left;
	height: 50px;
    font-size:24px;
	line-height: 50px;
	text-align: center;
	width: 50px;
}

#login form input {
	height: 50px;
}
fieldset{
    padding:0;
    border:0;
    margin: 0;

}
#login form input[type="text"], input[type="password"] {
	background-color: #fff;
	border-radius: 0px 3px 3px 0px;
	color: #000;
	margin-bottom: 1em;
	padding: 0 16px;
	width: 200px;
}

#login form input[type="submit"] {
  border-radius: 3px;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  background-color: #000000;
  color: #eee;
  font-weight: bold;
  /* margin-bottom: 2em; */
  text-transform: uppercase;
  padding: 5px 10px;
  height: 30px;
}

#login form input[type="submit"]:hover {
	background-color: #d44179;
}

#login > p {
	text-align: center;
}

#login > p span {
	padding-left: 5px;
}
.middle {
  display: flex;
  width: 600px;
}

   </style>
</head>
   
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main">
    
    
    <div class="container">

<div class="middle">
      <div id="login">


          <fieldset class="clearfix">
               <asp:Label ID="Label3" runat="server" Text="FullName" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            <br />
       
            <asp:TextBox ID="Nametext" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px"></asp:TextBox>
      
        <br />
               <asp:Label ID="Label4" runat="server" Text="Date of Birth" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            <br />
       
            <asp:TextBox ID="TextDob" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px"></asp:TextBox>
      
        <br />

            <asp:Label ID="Label2" runat="server" Text="Enter UserName" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            <br />
       
            <asp:TextBox ID="txtUser" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px"></asp:TextBox>
      
        <br />
               <asp:Label ID="Label1" runat="server" Text="Password" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            <br />
       
            <asp:TextBox ID="txtpassword" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px"></asp:TextBox>
      
        <br />
             <div>
                               
                             
        
            <br />
                                     <asp:Button ID="Register" runat="server" Text="Register Here" BackColor="#00008b" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="28px" Width="88px" OnClick="Register_Click"   />

            <asp:Button ID="BtnLogin" runat="server" Text="Login Here" BackColor="#00008b" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="28px" Width="88px" OnClick="BtnLogin_Click"   />

                            </div>

          </fieldset>
<div class="clearfix"></div>
        </form>

        <div class="clearfix"></div>

      </div> <!-- end login -->
    <h1>Register Here</h1>
      <div class="logo">Car Rentals
          
          <div class="clearfix"></div>
      </div>
      
      </div>

    </div>

</div>
        </div>
    </form>
</body>
</html>
