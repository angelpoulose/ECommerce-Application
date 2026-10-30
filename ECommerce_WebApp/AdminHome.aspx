<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ECommerce_WebApp.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-home {
            min-height: 52vh;
            padding: 64px 24px 84px;
            background: #eff2f1;
        }

        .admin-home__inner { max-width: 1060px; margin: 0 auto; }
        .admin-home__eyebrow {
            margin: 0 0 10px;
            color: #a96f32;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .14em;
            text-transform: uppercase;
        }
        .admin-home__title {
            margin: 0 0 10px;
            color: #2f453b;
            font-size: clamp(30px, 4vw, 42px);
            font-weight: 700;
            letter-spacing: -1px;
        }
        .admin-home__intro { margin: 0 0 34px; color: #6a6a6a; font-size: 16px; }
        .admin-actions { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 20px; }
        .admin-action {
            display: flex;
            min-height: 112px;
            align-items: center;
            padding: 26px;
            border: 1px solid #e3e8e5;
            border-radius: 14px;
            background: #fff;
            box-shadow: 0 8px 24px rgba(33, 51, 43, .06);
            color: #3b5d50;
            text-decoration: none;
            transition: transform .2s ease, box-shadow .2s ease, border-color .2s ease;
        }
        .admin-action:hover {
            transform: translateY(-4px);
            border-color: #c9d8d0;
            box-shadow: 0 14px 30px rgba(33, 51, 43, .12);
            color: #314d42;
        }
        .admin-action:focus-visible { outline: 3px solid #dba854; outline-offset: 3px; }
        .admin-action__title { color: #2f453b; font-size: 19px; font-weight: 700; line-height: 1.3; }
        @media (max-width: 640px) {
            .admin-home { padding: 42px 18px 60px; }
            .admin-actions { grid-template-columns: 1fr; gap: 14px; }
            .admin-action { min-height: 120px; padding: 22px; }
        }
        @media (prefers-reduced-motion: reduce) { .admin-action { transition: none; } .admin-action:hover { transform: none; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="admin-home">
        <div class="admin-home__inner">
            <p class="admin-home__eyebrow">Store management</p>
            <h1 class="admin-home__title">Admin dashboard</h1>
            <p class="admin-home__intro">Manage your store categories and products.</p>

            <div class="admin-actions">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="admin-action" PostBackUrl="~/CategoryInsertion.aspx">
                    <span class="admin-action__title">Add category</span>
                </asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="admin-action" PostBackUrl="~/ProductInsertion.aspx">
                    <span class="admin-action__title">Add product</span>
                </asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="admin-action" PostBackUrl="~/EditCategory.aspx">
                    <span class="admin-action__title">Edit categories</span>
                </asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="admin-action" PostBackUrl="~/EditProduct.aspx">
                    <span class="admin-action__title">Edit products</span>
                </asp:LinkButton>
            </div>
        </div>
    </main>
</asp:Content>
