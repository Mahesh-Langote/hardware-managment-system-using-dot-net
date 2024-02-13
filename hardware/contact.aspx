<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="hardware.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <link href="CSS/contact.css" rel="stylesheet" /> 
     <div class="container">
        <div class="images">
            <img style="margin-left: 42vw; position: absolute;" src="img/worker2.png" alt="" width="150vw" height="150vw">
        </div>

        <form>
            <i class="fas fa-paper-plane"></i>
            <div class="input-group">

                <label>Full Name</label>
                <input type="text" placeholder="Enter your name">
                <span id="name-error"></span>
                
            </div>
            <div class="input-group">
                <label>Phone No.</label>
                <input type="tel" placeholder="123 456 7890">
                <span id="phone-error"></span>
            </div>
            <div class="input-group">
                <label>Email Id</label>
                <input type="email" placeholder="Enter Email">
                <span id="email-erroe"></span>
            </div>

            <div class="input-group">

                <label>Subject</label>

                <textarea rows="5" placeholder="Enter your message"></textarea>
                <span id="massage-errors"></span>

            </div>

            <button>Submit</button>
            <span id="submit-error"></span>
        </form>
    </div>

</asp:Content>
