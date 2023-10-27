<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Movie_Ticket_Web.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
              main{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 71vh;
        background-image:url("Images/Sign-in-up.jpeg");
        background-size: cover;
        background-position: center;
        z-index: -1;
      }
      #login-wrapper{
        width: 420px;
        color: #fff;
        border-radius: 10px;
        padding: 30px 40px;
        background: transparent;
        border: 2px solid rgba(255, 255, 255, 0.8);
        backdrop-filter: blur(20px);
      }
      #login-wrapper h1{
        font-size: 36px;
        text-align: center;
      }
      #login-wrapper .input-box{
        width: 100%;
        height: 50px;
        margin: 30px 0;
        position: relative;
      }
      #login-wrapper .input-box .input{
        width: 100%;
        height: 100%;
        background: transparent;
        border: none;
        outline: none;
        border: 2px solid #fff;
        border-radius: 40px;
        font-size: 16px;
        color: #fff;
        padding: 20px 45px 20px 20px;
      }
      #login-wrapper .input-box .input::placeholder{
        color: #fff;
      }
      #login-wrapper .input-box i{
        position: absolute;
        right: 20px;
        top: 50%;
        transform: translateY(-50%);
        font-size: 20px;
      }
      #login-wrapper .btn{
        width: 100%;
        height: 45px;
        background: #fff;
        border: none;
        outline: none;
        border-radius: 40px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        cursor: pointer;
        font-size: 16px;
        color: #000;
        font-weight: 600;
      }
      #login-wrapper .register-link{
        font-size: 14.5px;
        text-align: center;
        margin: 20px 0 15px;
      }
      .register-link p a{
        color: #fff;
        text-decoration: none;
        font-weight: 600;
      }
      .register-link p a:hover{
        text-decoration: underline;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
      <section id="login-wrapper">
        <form>
          <h1>LOGIN</h1>
            <hr />
          <div class="input-box">
              <asp:TextBox CssClass="input" ID="TextBox1" placeholder="UserID" runat="server" required></asp:TextBox>
            <i class='bx bxs-user'></i>
          </div>
          <div class="input-box">
              <asp:TextBox CssClass="input" ID="TextBox2" placeholder="Password" runat="server" TextMode="Password" required></asp:TextBox>
            <i class='bx bxs-lock-alt'></i>
          </div>
            <asp:Button class="btn" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
          <div class="register-link">
            <p>Don't have an account ? <a href="Register.aspx">Sign Up</a></p>
          </div>
        </form>
      </section>
    </main>
</asp:Content>

