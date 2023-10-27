<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyTickets.aspx.cs" Inherits="Movie_Ticket_Web.Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .bookings {
            background-image: url("Images/Moviedetails_bg.jpg");
            background-size: cover;
            background-position: center;
            width: 100%;
            height: 100vh;
            box-sizing: border-box;
        }

        .header {
            background-color: transparent;
            color: #fff;
            font-size: 25px;
            padding: 25px;
        }

        .container {
            background: transparent;
            border-radius: 10px;
            border: 2px solid #fff;
            width: 95%;
            height: 80%;
            margin: 0 20px;
            padding: 0 15px;
            overflow-x: hidden;
            overflow-y: scroll;
        }

        .card {
            /* background-color: #fff; */
            height: 220px;
            width: 420px;
            display: inline-block;
            margin: 20px;
            border: 2px solid #fff;
            border-radius: 10px;
            backdrop-filter: blur(30px);
        }

        .inner-container {
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            width: 100%;
            height: 100%;
            /* background: red; */
        }

        .card-img {
            /* background-color: red; */
            width: 35%;
            height: 80%;
            border-radius: 10px;
            display: block;
            overflow: hidden;
        }

        .tktimg {
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
            border-radius: 10px;
        }

        .card .data {
            /* background-color: blue; */
            width: 50%;
            height: 80%;
        }

        .data .innerdata {
            width: 100%;
            height: 100%;
            padding-left: 20px;
            text-align: start;
            display: flex;
            justify-content: space-evenly;
            align-items: start;
            flex-direction: column;
            color: #fff;
        }

        .in {
            border-radius: 10px;
            outline: none;
            border: 2px solid #fff;
            background: transparent;
            padding: 5px;
            width: 60px;
            color: #fff;
        }

            .in::placeholder {
                color: #999;
            }

        .btn {
            text-align: center;
            padding: 5px;
            background: red;
            border: none;
            outline: none;
            border-radius: 5px;
            color: #fff;
            width: 100px;
            transition: 0.5s;
        }
        .btn:hover{
            background: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bookings">
        <div class="header">
            <h1>Your Booking Records</h1>
        </div>
        <div class="container">
          <!--  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate> -->
                    <asp:Repeater ID="MovieRepeater" runat="server">
                        <ItemTemplate>
                            <div class="card">
                                <div class="inner-container">
                                    <div class="card-img">
                                        <asp:Image CssClass="tktimg" ImageUrl='<%# Eval("MovieImageFilePath") %>' runat="server"></asp:Image>
                                    </div>
                                    <div class="data">
                                        <div class="innerdata">
                                            <h2>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                                            </h2>
                                            <p>
                                                Ticket Quantity :
                                <asp:Label ID="QuanID" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                            </p>
                                            <p>Purchased Amt : <asp:Label ID="Price" runat="server" Text='<%# Eval("BookingAmount") %>'></asp:Label></p>
                                            <asp:HiddenField ID="MovieIDHiddenField" runat="server" Value='<%# Eval("BookingID") %>' />
                                            <p>
                                                Cancel ticket :
                    <asp:TextBox ID="CancelQuantityTextBox" CssClass="in" placeholder="00" runat="server"></asp:TextBox>
                                            </p>
                                            <asp:Button CssClass="btn" ID="CancelTicketsButton" runat="server" Text="Cancel Ticket" OnClick="CancelBtn_Click" CommandName="CancelTickets" CommandArgument='<%# Eval("MovieID") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
               <!-- </ContentTemplate>
            </asp:UpdatePanel> -->
        </div>
    </section>
</asp:Content>
