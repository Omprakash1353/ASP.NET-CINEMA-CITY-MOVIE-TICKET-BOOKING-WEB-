<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Movie_Ticket_Web.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
      main{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url("Images/Sign-in-up.jpeg");
        background-size: cover;
        background-position: center;
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
        width: 500px;
      }
      #container h1{
        font-size: 26px;
        font-weight: bold;
        text-align: center;
        color: #fff;
        padding-bottom: 8px;
        border-bottom: 1px solid silver;
      }
      #container h1 i{
        font-size: 80px;
      }
      .content{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        flex-direction: column;
        padding: 20px 0;
      }
      .input-box{
        display: flex;
        flex-wrap: wrap;
        width: 100%;
        padding-bottom: 15px;
      }
      .input-box label{
        width: 95%;
        color: #fff;
        font-weight: bold;
        margin: 5px 0;
      }
      .input-box input{
        height: 40px;
        width: 100%;
        padding: 0 10px;
        border-radius: 10px;
        outline: none;
        background: transparent;
        border: 2px solid #fff;
        color: #fff;
      }
      .input-box input::placeholder{
        color: #fff;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
      <section id="container">
        <form>
          <h1>
            <i class='bx bxs-user-circle'></i>
            <br />PROFILE</h1>
          <div class="content">
            <div class="input-box">
              <label for="name">Full Name</label>
                <asp:TextBox CssClass="input" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="username">DOB</label>
                <asp:TextBox CssClass="input" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="email">Email</label>
                <asp:TextBox ID="TextBox3" CssClass="input" TextMode="Email" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="name">Phone</label>
                <asp:TextBox CssClass="input" ID="TextBox4" runat="server" TextMode="Phone" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box">
              <label for="password">UserID</label>
                <asp:TextBox ID="TextBox5" CssClass="input" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
          </div>
        </form>
      </section>
    </main>
</asp:Content>
