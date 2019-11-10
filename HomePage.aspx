=<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.vb" Inherits="PhilAmLife_Final._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html5>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    </head>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}

        .open-button {
            background-color: #555;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 0.8;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 280px;
        }

        .chat-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 15px;
            border: 3px solid #f1f1f1;
            z-index: 9;
        }

        .form-container {
            max-width: 300px;
            padding: 10px;
            background-color: white;
        }

        .form-container textarea {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            resize: none;
            min-height: 200px;
        }

        .form-container textarea:focus {
            background-color: #ddd;
            outline: none;
        }

        .form-container .btn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-bottom:10px;
            opacity: 0.8;
        }

        .form-container .cancel {
            background-color: red;
        }

        .form-container .btn:hover, .open-button:hover {
            opacity: 1;
        }

    </style>
    <link href="BackGround01.css" rel="stylesheet" />
    <body>
    <div class="jumbotron" style="height:300px">
        <h1>Welcome to<img src="Images/VitalityLogo01.png" /></h1>
        &nbsp;
    </div>
        
        




    <div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/fitness_girl.jpg" alt="fitness girl" title="fitness girl" id="wows1_0"/></li>
		<li><a href="http://wowslider.net"><img src="data1/images/fitness_together.jpg" alt="slideshow html code" title="fitness together" id="wows1_1"/></a></li>
		<li><img src="data1/images/fitness_man.jpg" alt="fitness man" title="fitness man" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="fitness girl"><span><img src="data1/tooltips/fitness_girl.jpg" alt="fitness girl"/>1</span></a>
		<a href="#" title="fitness together"><span><img src="data1/tooltips/fitness_together.jpg" alt="fitness together"/>2</span></a>
		<a href="#" title="fitness man"><span><img src="data1/tooltips/fitness_man.jpg" alt="fitness man"/>3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">bootstrap slideshow</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->




    <div class="row">
        <div class="col-md-4">
            <h2>Sign Up!</h2>
            <a href="#" class="google btn" style="background-color:crimson"><i class="fa fa-google fa-fw"></i><img src="Images/Icon01.png" /></a>
        </div>
        <div class="col-md-4">
            <h2>Customer Service</h2>
            <a href="CustomerService.aspx" class="google btn" style="background-color:aqua"><i class="fa fa-google fa-fw">
                <img src="Images/icon05.png" /></a>
        </div>
        <div class="col-md-4">
            <h2>Other Services</h2>
            <a href="#" class="google btn" style="background-color:darkgoldenrod"><i class="fa fa-google fa-fw"></i>
                <img src="Images/icon06.png" /></a>
        </div>

        <button class="open-button" onclick="openForm()">Online Assistant</button>
        
        <div class="chat-popup" id="myForm">
            <form action="/action_page.php" class="form-container">
                <h1>Chat</h1>

                <label for="msg"><b>Message</b></label>
                <textarea placeholder="Please Type a Message" name="msg" required></textarea>

                <button type="submit" class="btn">Send</button>
                <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
            </form>
        </div>

        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
    
        </script>

    </div>
    </body> 
    </i> 
</asp:Content>
