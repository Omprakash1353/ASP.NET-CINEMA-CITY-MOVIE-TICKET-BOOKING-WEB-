<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Movie_Ticket_Web.Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        body {
            background-color: #000;
        }

        .homepage-slider {
            height: 60vh;
            max-height: 60vh;
            width: 100%;
            /* max-width: 100%; */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .inner-slider {
            width: 90%;
            height: 100%;
        }

        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            /* background: red; */
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .swiper-slide img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 20px;
            }

        .movie-search {
            height: 100px;
            width: 100%;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
        }

        .search-section {
            background: #fff;
            width: 1200px;
            height: 50px;
            border-radius: 20px;
            display: flex;
        }

        .drop-down {
            background-color: red;
            min-width: 150px;
            max-width: 150px;
            /* z-index: 1; */
            height: 100%;
            border-radius: 20px;
            display: inline-block;
            color: #fff;
            font-size: 20px;
            text-align: center;
        }

        .search {
            border: none;
            outline: none;
            padding-left: 30px;
            min-width: 400px;
            /* z-index: 0; */
            height: 90%;
            outline: none;
            flex: 1;
            max-width: 100%;
            display: inline-block;
            align-self: center;
            font-size: 20px;
        }

        .search-btn {
            padding: 10px;
            border-radius: 0px 40px 40px 0;
            height: 80%;
            width: 50px;
            border: none;
            outline: none;
            background-color: #fff;
            font-size: 20px;
            font-weight: 700;
            border-left: 1px solid black;
            margin: 5px;
            text-align: center;
            cursor: pointer;
        }

        .movie-search-logo {
            height: 90px;
        }

        .streaming-movies {
            height: auto;
            padding: 40px;
        }

        .streaming-movies-header {
            color: #fff;
            padding: 20px 0px;
            font-size: 25px;
            left: 0;
        }

        .streaming-movies-container {
            width: 100%;
            background-color: transparent;
        }

        .streaming-movies-container-card {
            width: 196px;
            height: 294px;
            margin: 20px;
            display: inline-block;
            padding-bottom: 50px;
            text-align: center;
            transition: 0.5s;
        }

            .streaming-movies-container-card:hover {
                transform: scale(1.1);
                z-index: 999;
            }

            .streaming-movies-container-card .card-img {
                height: 100%;
                width: 100%;
                object-fit: cover;
                object-position: center;
                border-radius: 10px;
            }

            .streaming-movies-container-card .card-label {
                color: #fff;
                font-size: 12px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-move">
        <p class="text">
            Get flat 20% off on any movie ticket this season available for your
        near-by cinema
        </p>
    </div>

    <section class="homepage-slider">
        <div class="inner-slider">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="Images/batman-dark-knight-5k-ch.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/R.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/inception_banner_04.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Jawan_Banner.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Oppenheimer_banner.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/black-adam-2021-rock-os.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Vaccine_banner.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Nun_banner.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Fukrey3_banner.jpg" alt="" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/Elemental_banner.jpg" alt="" />
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <!-- <div class="wrapper">
        <i class="fa-solid fa-arrow-left btn prev"></i>
        <div class="image-container">
          <div class="carousel">
            <img src="batman-dark-knight-5k-ch.jpg" alt="">
            <img src="batman-dark-knight-5k-ch.jpg" alt="">
            <img src="batman-dark-knight-5k-ch.jpg" alt="">
            <img src="batman-dark-knight-5k-ch.jpg" alt="">
          </div>
        </div>
        <i class="fa-solid fa-arrow-right btn prev"></i>
      </div> -->
    </section>



    <section class="streaming-movies">


        <div class="movie-search">

            <!-- <img class="movie-search-logo" src="Images/Cinema__2_-removebg-preview.png"/> -->
            <div class="search-section">
                <asp:DropDownList ID="DropDownList1" CssClass="drop-down" runat="server">
                    <asp:ListItem Text="All" Value="All">All</asp:ListItem>
                    <asp:ListItem Text="Movie" Value="Movie">Movie</asp:ListItem>
                    <asp:ListItem Text="Time" Value="Time">Time</asp:ListItem>
                    <asp:ListItem Text="Price" Value="Price">Price</asp:ListItem>
                    <asp:ListItem Text="Location" Value="Location">Location</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" CssClass="search" runat="server" placeholder="Search"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" CssClass="search-btn" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-magnifying-glass"></i></asp:LinkButton>
            </div>
        </div>
        <div class="streaming-movies-header">
            <h2>Streaming Movies</h2>
        </div>
        <!-- <div class="search-box"></div> -->
        <div class="streaming-movies-container">
            <!-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate> -->
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="streaming-movies-container-card">
                                <asp:HyperLink runat="server" ID="MovieDetailLink" NavigateUrl='<%# "MovieDetails.aspx?MovieID=" + Eval("MovieID") %>'>
                                    <asp:Image CssClass="card-img" ImageUrl='<%# Eval("MovieImageFilePath") %>' ID="Image1" runat="server" />
                                </asp:HyperLink>
                                <asp:Label ID="Label1" CssClass="card-label" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                <!-- </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="click" />
                </Triggers>
            </asp:UpdatePanel> -->
        </div>

    </section>


    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 30,
            centeredSlides: true,
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    </script>

</asp:Content>
