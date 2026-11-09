<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="Profile_display.aspx.cs" Inherits="ECommerce_WebApp.Profile_display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    

<style>
    body {
        background-color: lightgrey;
    }

    .profile-page {
        background: lightgrey;
        min-height: 100vh;
        padding: 35px 20px;
    }

    .profile-main {
        max-width: 1150px;
        min-height: 570px;
        margin: auto;
        background: white;
        border-radius: 5px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.15);
    }

    /* Left profile section */
    .profile-sidebar {
        text-align: center;
        padding: 65px 20px;
        border-right: 1px solid #e5e5e5;
    }

    .profile-photo {
        width: 145px;
        height: 145px;
        border-radius: 50%;
        object-fit: cover;
        border: 4px solid #f0f0f0;
        margin-bottom: 20px;
    }

    .profile-name {
        display: block;
        font-size: 18px;
        font-weight: 600;
        color: #333;
        margin-bottom: 5px;
    }

    .profile-email {
        color: #888;
        font-size: 13px;
        overflow-wrap: anywhere;
    }

    /* Middle and right sections */
    .profile-section {
        padding: 40px 30px;
        border-right: 1px solid #e5e5e5;
    }

    .section-heading {
        font-size: 23px;
        font-weight: 500;
        color: #333;
        margin-bottom: 30px;
    }

    .sub-heading {
        font-size: 16px;
        font-weight: 500;
        color: #333;
        margin-bottom: 30px;
    }

    .info-group {
        margin-bottom: 24px;
    }

    .info-label {
        display: block;
        font-size: 13px;
        font-weight: 600;
        color: #555;
        margin-bottom: 7px;
    }

    .info-value {
        display: block;
        width: 100%;
        padding: 11px 12px;
        background: #fff;
        border: 1px solid #dce0e5;
        border-radius: 4px;
        color: #555;
        font-size: 14px;
        min-height: 40px;
        overflow-wrap: anywhere;
    }

    .profile-footer {
        text-align: center;
        margin-top: 30px;
    }

    .edit-btn {
        background: #652779;
        color: white;
        padding: 10px 25px;
        border-radius: 4px;
        border: none;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
    }

    .edit-btn:hover {
        background: #4d1d60;
        color: white;
    }

    @media(max-width: 991px) {
        .profile-sidebar {
            border-right: none;
            border-bottom: 1px solid #e5e5e5;
            padding: 35px 15px;
        }

        .profile-section {
            border-right: none;
            border-bottom: 1px solid #e5e5e5;
        }
    }
</style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-page">

        <div class="container-fluid profile-main">

            <div class="row">

                <!-- LEFT PROFILE SECTION -->
                <div class="col-lg-3 profile-sidebar">

                    <asp:Image ID="userphoto" runat="server"
                        CssClass="profile-photo"
                        AlternateText="Profile Photo" />

                    <asp:Label ID="namelb" runat="server"
                        CssClass="profile-name" />

                    <asp:Label ID="emaillb" runat="server"
                        CssClass="profile-email" />

                </div>


                <!-- MIDDLE PERSONAL INFORMATION -->
                <div class="col-lg-5 profile-section">

                    <h3 class="section-heading">Profile Information</h3>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Name"
                            CssClass="info-label" />

                        <asp:Label ID="namelb2" runat="server"
                            CssClass="info-value" />
                    </div>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Age"
                            CssClass="info-label" />

                        <asp:Label ID="agelb" runat="server"
                            CssClass="info-value" />
                    </div>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Gender"
                            CssClass="info-label" />

                        <asp:Label ID="genderlb" runat="server"
                            CssClass="info-value" />
                    </div>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Address"
                            CssClass="info-label" />

                        <asp:Label ID="addresslb" runat="server"
                            CssClass="info-value" />
                    </div>

                </div>


                <!-- RIGHT CONTACT INFORMATION -->
                <div class="col-lg-4 profile-section">

                    <h5 class="sub-heading">Contact Information</h5>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Phone Number"
                            CssClass="info-label" />

                        <asp:Label ID="phonelb" runat="server"
                            CssClass="info-value" />
                    </div>

                    <div class="info-group">
                        <asp:Label runat="server" Text="Email Address"
                            CssClass="info-label" />

                        <asp:Label ID="emaillb2" runat="server"
                            CssClass="info-value" />
                    </div>

                </div>

            </div>

        </div>
        <br />
    <br />
    <br />
    <br />
    </div>
    
</asp:Content>


