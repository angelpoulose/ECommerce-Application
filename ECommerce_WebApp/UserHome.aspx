<%@ Page Title="Shop by Category" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ECommerce_WebApp.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .user-home {
            padding: 64px 24px 88px;
            background: #eff2f1;
        }

        .user-home__inner {
            max-width: 1200px;
            margin: 0 auto;
        }

        .user-home__heading {
            margin: 0 0 8px;
            color: #2f453b;
            font-size: clamp(20px, 4vw, 30px);
            font-weight: 700;
            letter-spacing: -1px;
        }

        .user-home__intro {
           margin: 0 0 8px;
            color: #2f453b;
            font-size: clamp(20px, 4vw, 30px);
            font-weight: 700;
            letter-spacing: -1px;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 24px;
        }

        .category-grid > span {
            display: block;
            min-width: 0;
        }

        .category-card {
            display: flex;
            height: 100%;
            flex-direction: column;
            overflow: hidden;
            border: 1px solid rgba(59, 93, 80, .09);
            border-radius: 16px;
            background: #fff;
            box-shadow: 0 8px 24px rgba(33, 51, 43, .07);
            transition: transform .2s ease, box-shadow .2s ease;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 16px 32px rgba(33, 51, 43, .13);
        }

        .category-card__image {
            display: block;
            width: 100%;
            height: 230px;
            border: 0;
            background: #e3e9e5;
            object-fit: cover;
        }

        .category-card__body {
            display: flex;
            flex: 1;
            flex-direction: column;
            padding: 20px 22px 22px;
        }

        .category-card__title {
            margin: 0 0 8px;
            color: #3b5d50;
            font-size: 20px;
            font-weight: 700;
            line-height: 1.3;
        }

        .category-card__description {
            margin: 0;
            color: #747b77;
            line-height: 1.65;
        }

        @media (max-width: 575px) {
            .user-home { padding: 42px 18px 60px; }
            .category-grid { gap: 18px; }
            .category-card__image { height: 210px; }
        }

        @media (max-width: 900px) {
            .category-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
        }

        @media (max-width: 575px) {
            .category-grid { grid-template-columns: 1fr; }
        }

        @media (prefers-reduced-motion: reduce) {
            .category-card { transition: none; }
            .category-card:hover { transform: none; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="user-home">
        <div class="user-home__inner">
            <%--<h1 class="user-home__heading">Shop by category</h1>--%>
            <p class="user-home__intro">Explore our furniture and find the right pieces for your space.</p>
            <br />
            <asp:DataList ID="DataList1" runat="server" CssClass="category-grid" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemStyle CssClass="category-card" />
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="category-card__image" AlternateText='<%# Eval("cat_name") %>' ImageUrl='<%# Eval("cat_image") %>' CommandArgument='<%# Eval("cat_id") %>' OnCommand="ImageButton1_Command" />
                    <div class="category-card__body">
                        <asp:Label ID="Label1" runat="server" CssClass="category-card__title" Text='<%# Eval("cat_name") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" CssClass="category-card__description" Text='<%# Eval("cat_description") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </main>
</asp:Content>
