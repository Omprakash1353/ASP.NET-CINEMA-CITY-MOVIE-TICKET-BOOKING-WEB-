<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="Movie_Ticket_Web.MovieDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
    <style>
        .container{
            background: url("Images/Moviedetails_bg.jpg");
            background-size: cover;
            background-position: center;
            height: 80vh;
            width: 98.9vw;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .movie-detail{
            background-color: transparent;
            backdrop-filter: blur(30px);
            /* background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)); */
            height: 70%;
            width: 50%;
            border: 2px solid #fff;
            color: #fff;
            border-radius: 10px;
            padding: 30px;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
        }
        .movie-image{
            width: 250px;
            height: 340px;
        }
        .movie-image img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: top;
            border-radius: 10px;
        }
        .movie-data{
            width: 450px;
            height: 370px;
            padding: 10px;
            padding-left: 30px;
            position: relative;
        }
        .movie-title{
            text-align: center;
            font-size: 27px;
            padding-bottom: 10px;
        }
        .movie-description{
            height: 120px;
            width: 100%;
            overflow: scroll;
            overflow-x: hidden;
        }
        .desc-span{
            font-size: 20px;
        }
        .movie-form p{
            margin-bottom: 20px;
            font-size: 20px;
        }
        .movie-price{
            font-size: 22px;
        }
        .movie-form .price{
            padding-top: 10px;
        }
        .ticket{
            padding: 5px;
            padding-left: 15px;
            border-radius: 10px;
            outline: none;
            border: 1px solid #fff;
            background-color: transparent;
            color: #fff;
        }
        .buy{
            position: absolute;
            left: 40%;
            text-align: center;
            transform: translateY(-50%);
            bottom: 0px;
            width: 75px;
            height: 35px;
            border-radius: 10px;
            outline: none;
            border: 2px solid #fff;
            color: #000;
            font-size: 15px;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <div class="movie-detail">
            <div class="movie-image">
                <asp:Image ID="Image1" runat="server" />
            </div>
            <div class="movie-data">
                <h1 class="movie-title">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </h1>
                <span class="desc-span">Description</span>
                <div class="movie-description">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        
                <div class="movie-form">
                    <p  class="price">Price : ₹ <asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
                    <p>Tickets : <asp:TextBox CssClass="ticket" ID="TextBox1" runat="server" Text="" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></p>
                </div>
                <asp:Button ID="Button1" runat="server" class="buy" Text="BUY" OnClick="Button1_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </section>
</asp:Content>
