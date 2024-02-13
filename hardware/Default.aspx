<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="hardware._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <style>
        /* .sign-up{visibility: hidden;} */

        #container {
            position: absolute;
            left: 50%;
            top: 55%;
            transform: translate(-50%, -50%);
            background-color: var(--main-color);
            width: 1100px;
            /* height: 400px; */
            border-radius: 10px;
            display: grid;
            grid-template-columns: repeat(2, 50%);
            box-shadow: var(--box-shadow);
            transition-duration: 1s;
        }

        #left,
        #right {
            /* background-color: #dfe3e6; */
            background: linear-gradient(#bdc3c7, #2c3e50);
            /* margin: auto; */
            border-radius: 10px;
            opacity: 0.8;
        }

        #left {
            background-color: white;
            background-size: cover;
            background-position: center;
            box-shadow: var(--box-shadow);
        }

        #welcome,
        #lorem {
            margin: 20px;
            text-shadow: var(--box-shadow);
        }

        #welcome {
            font-size: 75px;
            font-weight: 300;
            margin-top: 330px;
            text-shadow: var(--box-shadow);
        }

        #login {
            padding-top: 35%;
            text-align: center;
            text-transform: uppercase;
            font-weight: 100;
            text-shadow: var(--box-shadow);
        }

        .client-info {
            display: block;
            margin: 20px auto;
            width: 60%;
            height: 50px;
            border: solid #999 1px;
            border-radius: 5px;
            text-indent: 15px;
            transition: all 200ms;
            box-shadow: var(--box-shadow);
        }

            .client-info:focus {
                width: 80%;
            }

        label {
            position: absolute;
            margin: -76px 130px;
            font-size: 12px;
            white-space: nowrap;
            background: #fff;
            padding: 0 5px;
            color: #999;
            transition: all 200ms;
            text-shadow: var(--box-shadow);
        }

        #email:focus ~ label[for="email"] {
            margin: -76px 70px;
        }

        #password:focus ~ label[for="password"] {
            margin: -76px 70px;
        }

        #submit {
            border: none;
            background-color: #042440;
            color: white;
            width: 60%;
        }

            #submit:hover {
                background-color: #a2bedc;
            }

        .social {
            background-color: #fff;
            display: block;
            margin: 10px auto;
            width: 70%;
            height: 50px;
            border: none;
            border-radius: 5px;
            text-transform: uppercase;
            transition-duration: 200ms;
            box-shadow: var(--box-shadow);
            text-shadow: var(--box-shadow);
        }

        @media (max-width: 1250px) {
            #container {
                width: 600px;
                display: block;
            }

            #left {
                display: none;
            }

            #right {
                margin-top: 16px;
                background-size: cover;
                background-position: center;
                box-shadow: var(--box-shadow);
            }
        }

        @media (max-height: 850px) {
            #container {
                width: 1000px;
                height: 500px;
            }

            #login {
                padding-top: 20%;
            }

            #welcome {
                margin-top: 100px;
                font-size: 60px;
            }

            #lorem {
                font-size: 15px;
            }
        }
    </style>
    
    <div class="img"></div>

    <div id="container" class="log-in">
        <div id="left">
            <h1 id="welcome"><b>Welcome</b></h1>
            <p id="lorem">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />
                Vivamus sodales eros non arcu pellentesque convallis.<br />
                Nunc dignissim lectus in malesuada porta.<br />
                Proin ac erat sed urna congue suscipit.<br />
                Morbi aliquet eget
                nisl id ornare.
            </p>
        </div>
        <div id="right">
            <h1 id="login">LogIn</h1>
            <br />
            <input type="email" id="email" class="client-info" />
            <label for="email">Email</label>
            <input type="password" id="password" class="client-info" />
            <label for="password">Password</label>
            <input type="submit" id="submit" class="client-info" value="Log In" />
            <button class="social" onclick="showSignup()">Sign Up</button>
        </div>
    </div>

    <div id="container" class="sign-up" style="visibility: hidden;">
        <div id="left">
            <h1 id="welcome"><b>Shree Ganesha Hardware Shop</b></h1>
            <p id="lorem">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />
                Vivamus sodales eros non arcu pellentesque convallis.<br />
                Nunc dignissim lectus in malesuada porta.
            </p>
        </div>
        <div id="right">
            <h1 id="login">SignUp</h1>
            <br />
            <input type="email" id="email" class="client-info" />
            <label for="email">Email</label>
            <input type="password" id="password" class="client-info" />
            <label for="password">Password</label>
            <button class="social">Sign Up</button>
            <input type="submit" id="submit" class="client-info" onclick="showLogin()" value="Log In" />

        </div>
    </div>
    <script>

        function showSignup() {
            document.querySelector('.log-in').style.visibility = 'hidden';
            document.querySelector('.sign-up').style.visibility = 'visible';
        }

        function showLogin() {
            document.querySelector('.sign-up').style.visibility = 'hidden';
            document.querySelector('.log-in').style.visibility = 'visible';
        }
    </script>



</asp:Content>
