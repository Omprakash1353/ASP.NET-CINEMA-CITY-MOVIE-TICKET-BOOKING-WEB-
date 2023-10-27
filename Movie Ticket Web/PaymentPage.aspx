<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="Movie_Ticket_Web.PaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer" />
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .paymentGetway {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
            background: #000;
        }

            .paymentGetway .container {
                background: #fff;
                width: 400px;
                border-radius: 8px;
                padding: 40px;
                box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1), 0 5px 12px 2px rgba(0, 0, 0, 0.1), 0 18px 36px 6px rgba(0, 0, 0, 0.1);
            }

            .paymentGetway .title {
                font-size: 20px;
            }

        .container .form .input {

        }

        .container .form .category {
            margin-top: 10px;
            padding-top: 20px;
        }

        .category .label {
            width: 100%;
            height: 65px;
            padding: 20px;
            box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.2);
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
            border-radius: 5px;
        }

        .label:nth-child(2), .label:nth-child(3) {
            margin: 15px 0;
        }

        #visa:checked ~ .category .visaMethod, #mastercard:checked ~ .category .mastercardMethod, #paypal:checked ~ .category .paypalMethod, #AMEX:checked ~ .category .AMEXMethod {
            box-shadow: 0px 0px 0px 1px #6064b6;
        }

            #visa:checked ~ .category .visaMethod .check, #mastercard:checked ~ .category .mastercardMethod .check, #paypal:checked ~ .category .paypalMethod .check, #AMEX:checked ~ .category .AMEXMethod .check {
                display: block;
            }

        .label .imgName {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .imgName span {
            margin-left: 20px;
        }

        .imgName .imgContainer {
            width: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        img {
            width: 50px;
            height: auto;
            padding: 10px;
        }

        .visa img {
            width: 60px;
        }

        .paypal img {
            width: 60px;
        }

        .AMEX img {
            width: 45px;
        }

        .check {
            display: none;
        }

            .check i {
                font-size: 18px;
                color: #ff0000;
                font-size: 30px;
            }

        .btn {
            width: 100%;
            height: 40px;
            margin-top: 30px;
            border-radius: 8px;
            border: none;
            background-color: #ff0000;
            color: #fff;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="paymentGetway">
        <div class="container">
            <div class="title">
                <h4>Select a <span style="color: #ff0000">Payment</span> method</h4>
            </div>
            <div class="form">
                <div class="category">
                    <div for="visa" class="label visaMethod">
                        <div class="imgName">
                            <asp:RadioButton class="input" runat="server" ID="visa" GroupName="payment"></asp:RadioButton>
                            <div class="imgContainer visa">
                                <img src="https://i.ibb.co/vjQCN4y/Visa-Card.png" alt="" />
                            </div>
                            <span class="name">VISA</span>
                        </div>
                        <span class="check"><i class="fa-solid fa-circle-check"></i></span>
                    </div>
                    <div for="mastercard" class="label mastercardMethod">
                        <div class="imgName">
                            <asp:RadioButton class="input" runat="server" ID="mastercard" GroupName="payment"></asp:RadioButton>
                            <div class="imgContainer">
                                <img src="https://i.ibb.co/vdbBkgT/mastercard.jpg" alt="" />
                            </div>
                            <span class="name">MasterCard</span>
                        </div>
                        <span class="check"><i class="fa-solid fa-circle-check"></i></span>
                    </div>
                    <div for="paypal" class="label paypalMethod">
                        <div class="imgName">
                            <asp:RadioButton class="input" runat="server" ID="paypal" GroupName="payment"></asp:RadioButton>
                            <div class="imgContainer paypal">
                                <img src="https://i.ibb.co/KVF3mr1/paypal.png" alt="" />
                            </div>
                            <span class="name">Paypal</span>
                        </div>
                        <span class="check"><i class="fa-solid fa-circle-check"></i></span>
                    </div>
                    <div for="AMEX" class="label AMEXMethod">
                        <div class="imgName">
                            <asp:RadioButton class="input" runat="server" ID="AMEX" GroupName="payment"></asp:RadioButton>
                            <div class="imgContainer AMEX">
                                <img
                                    src="https://i.ibb.co/wQnrX86/American-Express.jpg"
                                    alt="" />
                            </div>
                            <span class="name">AMEX</span>
                        </div>
                        <span class="check"><i class="fa-solid fa-circle-check"></i></span>
                    </div>
                </div>
            </div>
            <asp:Button runat="server" Text="Pay" class="btn" OnClick="Unnamed1_Click" />
        </div>
    </div>
</asp:Content>
