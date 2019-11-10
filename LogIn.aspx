<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LogIn.aspx.vb" Inherits="PhilAmLife_Final.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            
            <style>
                body {
                    font-family: Arial, Helvetica, sans-serif;
                }

                * {
                    box-sizing: border-box;
                }

                .container {
                    position: relative;
                    border-radius: 5px;
                    background-color: #f2f2f2;
                    padding: 20px 0 30px 0;
                } 

                input, .btn {
                    width: 100%;
                    padding: 12px;
                    border: none;
                    border-radius: 4px;
                    margin: 5px 0;
                    opacity: 0.85;
                    display: inline-block;
                    font-size: 17px;
                    line-height: 20px;
                    text-decoration: none;
                }

                input:hover, .btn:hover {
                    opacity: 1;
                }

                .fb {
                    background-color: #3B5998;
                    color: white;
                }

                .twitter {
                    background-color: #55ACEE;
                    color: white;
                }

                .google {
                    background-color: #dd4b39;
                    color: white;
                }

                input[type=submit] {
                    background-color: #4CAF50;
                    color: white;
                    cursor: pointer;
                }

                input[type=submit]:hover {
                    background-color: #45a049;
                }

                .col {
                    float: left;
                    width: 50%;
                    margin: auto;
                    padding: 0 50px;
                    margin-top: 6px;
                }

                .row:after {
                    content: "";
                    display: table;
                    clear: both;
                }

                .vl {
                    position: absolute;
                    left: 50%;
                    transform: translate(-50%);
                    border: 2px solid #ddd;
                    height: 175px;
                }

                .vl-innertext {
                    position: absolute;
                    top: 50%;
                    transform: translate(-50%, -50%);
                    background-color: #f1f1f1;
                    border: 1px solid #ccc;
                    border-radius: 50%;
                    padding: 8px 10px;
                }

                .hide-md-lg {
                    display: none;
                }

                .bottom-container {
                    text-align: center;
                    background-color: #666;
                    border-radius: 0px 0px 4px 4px;
                }

                @media screen and (max-width: 650px) {
                    .col {
                        width: 100%;
                        margin-top: 0;
                    }
 
                     .vl {
                        display: none;
                     }
  
                    .hide-md-lg {
                        display: block;
                        text-align: center;
                    }
                }
            </style>
            <link href="BackGround01.css" rel="stylesheet" />
        </head>

        <body>

            <div class="container">
                <form action="/login.php">
            <div class="row">

            <h2 style="text-align:center">LogIn to PhilAm Vitality (BETA)</h2>

            <div class="vl">
                <span class="vl-innertext">or</span>
            </div>

            <div class="col">
                <a href="https://www.facebook.com" class="fb btn">
                    <i class="fa fa-facebook fa-fw"></i> Go With Your Facebook
                </a>

                <a href="https://www.twitter.com" class="twitter btn">
                    <i class="fa fa-twitter fa-fw"></i> Go With Your Twitter
                </a>

                <a href="https://www.accounts.google.com" class="google btn"><i class="fa fa-google fa-fw">
                    </i> Go With Your Google+
                </a>
            </div>

            <div class="col">
                <div class="hide-md-lg">
                    <p>Or sign your Philam Life Account:</p>
                </div>

                <input type="text" name="user_name" placeholder="PHILAM Life Vitality Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" value="Login"><a href="UserInterface.aspx">Log In</a></button>  
                <
            </div>
      
         </div>
      </form>
    </div>

    <div class="bottom-container">
        <div class="row">
            <div class="col">
                <a href="#" style="color:white" class="btn">Sign up</a>
            </div>

            <div class="col">
                <a href="#" style="color:white" class="btn">Forgot password?</a>
            </div>
        </div>
    </div>

</body>
</html>
    </div>
</asp:Content>
