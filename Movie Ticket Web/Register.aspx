<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Movie_Ticket_Web.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
              main{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80vh;
        background-image: url("Images/Sign-in-up.jpeg");
        background-size: cover;
        background-position: center;
        z-index: -1;
      }
      main #container{
        max-width: 650px;
        padding: 28px;
        margin: 0 28px;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 15px 20px rgba(0, 0, 0, 0.6);
        background: transparent;
        border: 2px solid #fff;
        backdrop-filter: blur(20px);
      }
      #container h1{
        font-size: 26px;
        font-weight: bold;
        text-align: center;
        color: #fff;
        padding-bottom: 8px;
        border-bottom: 1px solid silver;
      }
      .content{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        padding: 20px 0;
      }
      .input-box{
        display: flex;
        flex-wrap: wrap;
        width: 50%;
        padding-bottom: 15px;
      }
      .input-box:nth-child(2n) {
        justify-content: end;
      }
      .input-box label{
        width: 95%;
        color: #fff;
        font-weight: bold;
        margin: 5px 0;
      }
      .input-box .input{
        height: 40px;
        width: 95%;
        padding: 0 10px;
        border-radius: 10px;
        outline: none;
        background: transparent;
        border: 2px solid #fff;
        color: #fff;
      }
      .input-box .input::placeholder{
        color: #fff;
      }
      .content #last{
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 100%;
        padding-top: 20px;
        color:#fff;
      }

      .content #last .btn{
        width: 200px;
        height: 50px;
        border-radius: 40px;
        color: #000;
        border: #fff;
        font-size: 15px;
        font-weight: 600;
        margin-bottom: 20px;
        cursor: pointer;
      }
      .content #last p{
        color: #fff;
        font-size: 15px;
      }
      .content #last a{
        text-decoration: none;
        color:#fff ;
        font-weight: 1000;
      }
      .content #last a:hover{
        text-decoration: underline;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
      <section id="container">
        <form action="">
          <h1>SIGN UP</h1>
          <div class="content">
            <div class="input-box">
              <label for="name">Full Name</label>
                <asp:TextBox placeholder="Full Name" CssClass="input" ID="TextBox1" runat="server" required></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="username">DOB</label>
                <asp:TextBox placeholder="" CssClass="input" ID="TextBox2" TextMode="Date" runat="server" required></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="email">Email</label>
                <asp:TextBox ID="TextBox3" CssClass="input" placeholder="example@gmail.com" TextMode="Email" runat="server" required></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="name">Phone</label>
                <asp:TextBox placeholder="+91" CssClass="input" ID="TextBox4" runat="server" TextMode="Phone" required></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="password">UserID</label>
                <asp:TextBox ID="TextBox5" CssClass="input" runat="server" placeholder="UserID" required></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="password">Password</label>
                <asp:TextBox ID="TextBox6" CssClass="input" TextMode="Password" runat="server" placeholder="Password" required></asp:TextBox>
            </div>
            <div id="last">
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="SIGN UP" OnClick="Button1_Click"/>
            <p>Already have an account ! <a href="Login.aspx">Login</a></p>
            </div>
          </div>
        </form>
      </section>
    </main>
</asp:Content>
