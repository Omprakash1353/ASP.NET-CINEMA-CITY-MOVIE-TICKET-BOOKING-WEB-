<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Movie_Ticket_Web.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            padding: 0;
            margin: 0;
            font-family: "Poppins", sans-serif;
        }

        #banner {
            background: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.9)), url("Images/HomePageBanner1.jpg");
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        .banner-text {
            text-align: center;
            color: #fff;
            padding-top: 100px;
        }

            .banner-text h1 {
                font-size: 90px;
                font-family: "Kaushan Script", cursive;
            }

            .banner-text p {
                font-size: 20px;
                font-style: italic;
            }

        .banner-btn {
            margin: 70px auto 0;
        }

            .banner-btn a {
                width: 150px;
                text-decoration: none;
                display: inline-block;
                margin: 0 10px;
                padding: 12px 0;
                color: #fff;
                border: 0.5px solid white;
                position: relative;
                z-index: 1;
                transition: 0.5s;
            }

                .banner-btn a span {
                    width: 0%;
                    height: 100%;
                    position: absolute;
                    top: 0;
                    left: 0;
                    background: #fff;
                    z-index: -1;
                    transition: 0.5s;
                }

                .banner-btn a:hover span {
                    width: 100%;
                }

                .banner-btn a:hover {
                    color: #000;
                }
                      .trending-movies, .upcoming-movies{
        background-color: #000;
        height: 50vh;
        width: 100%;
        /* background-color: #fff; */
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        gap: 20px;
      }
      .trending-movies-header, .upcoming-movies-header{
        width: 95%;
        height: 10%;
        /* background-color: green; */
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #fff;
      }
      .trending-movies-header h2, .upcoming-movies-header h2{
        font-size: 35px;
      }
      .trending-movies-header a, .upcoming-movies-header a{
        text-decoration: none;
        font-size: 20px;
        /* color: #fff; */
      }
      .trending-movies-container, .upcoming-movies-container{
        height: 76%;
        width: 95%;
        /* background-color: white; */
        /*overflow: hidden; */
        white-space: nowrap;
        overflow-x: auto;
        overflow-y: hidden;
        align-items: center;
      }
      .trending-movies-container::-webkit-scrollbar, .upcoming-movies-container::-webkit-scrollbar{
        display: none;
      }
      .trending-movies-container-card, .upcoming-movies-container-card{
        width: 180px;
        height: 270px;
        /* background-color: blue; */
        border: 2px solid black;
        border-radius: 20px;
        display: inline-block;
        object-fit: cover;
        object-position: center;
        margin: 0 10px;
        /* gap: 20px; */
        transition: 0.5s;
      }
      .trending-movies-container-card .img, .upcoming-movies-container-card .img{
        height: 100%;
        border-radius: 10px;
      }
       .trending-movies-container-card:hover, .upcoming-movies-container-card:hover{
        transform: scale(1.1);
        z-index:999;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="banner">
        <div class="banner-text">
            <h1>Your Premier Destination for Film Fun</h1>
            <p>Your ticket to the world of cinema ! Where every frame counts</p>
            <div class="banner-btn">
                <a href="Movies.aspx"><span></span>EXPLORE</a>
            </div>
        </div>
    </section>

        <section class="trending-movies">
      <div class="trending-movies-header">
        <h2>Trending Movies</h2>
        <a href="#">See All >></a>
      </div>
      <div class="trending-movies-container">
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                <div class="trending-movies-container-card">
                        <asp:HyperLink runat="server" ID="MovieDetailLink" NavigateUrl='<%# "MovieDetails.aspx?MovieID=" + Eval("MovieID") %>'>
                            <asp:Image CssClass="img" ImageUrl='<%# Eval("MovieImageFilePath") %>' ID="Image1" runat="server" />
                        </asp:HyperLink>
                </div>
              </ItemTemplate>
          </asp:Repeater>
      </div>
    </section>

    <section class="upcoming-movies">
      <div class="upcoming-movies-header">
        <h2>Upcoming Movies</h2>
        <a href="#">See All >></a>
      </div>
      <div class="upcoming-movies-container">
          <asp:Repeater ID="Repeater2" runat="server">
              <ItemTemplate>
                <div class="upcoming-movies-container-card">
                    <asp:HyperLink runat="server" ID="MovieDetailLink" NavigateUrl='<%# "MovieDetailsUpcoming.aspx?MovieID=" + Eval("MovieID") %>'>
                    <asp:Image CssClass="img" ImageUrl='<%# Eval("MovieImageFilePath") %>' ID="Image1" runat="server" />
                        </asp:HyperLink>
                </div>
              </ItemTemplate>
          </asp:Repeater>
      </div>
    </section>

</asp:Content>
