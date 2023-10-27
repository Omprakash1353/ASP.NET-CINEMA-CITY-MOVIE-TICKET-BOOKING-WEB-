<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MovieDetailsUpcoming.aspx.cs" Inherits="Movie_Ticket_Web.MovieDetailsUpcoming" %>
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
        .movie-form h2{
            display: flex;
            justify-content:center;
            align-items: center;
            font-size: 40px;
            font-family: "Kaushan Script", cursive;
            padding-top: 25px;
        }
        .ok{
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
                <div class="movie-form">
                    <h2>COMING SOON</h2>
                </div>
                <asp:Button ID="Button1" runat="server" class="ok" Text="OK" OnClick="Button1_Click" />
            </div>
        </div>
    </section>
</asp:Content>
