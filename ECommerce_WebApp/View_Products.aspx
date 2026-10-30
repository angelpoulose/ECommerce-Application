<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="View_Products.aspx.cs" Inherits="ECommerce_WebApp.View_Productss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="catalog-section">
        <div class="container">
            <div class="catalog-heading">
                <p class="catalog-eyebrow">Made for your home</p>
                <h1>Our collection</h1>
                <p>Find the right piece to make your space feel like yours.</p>
            </div>
            <asp:DataList ID="DataList1" runat="server" CssClass="catalog-grid" RepeatColumns="4" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <article class="catalog-card">
                        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="catalog-image" CommandArgument='<%# Eval("product_id") %>' ImageUrl='<%# Eval("Product_image") %>' AlternateText='<%# Eval("product_name") %>' OnCommand="ImageButton1_Command" />
                        <div class="catalog-card-content">
                            <asp:Label ID="Label1" runat="server" CssClass="catalog-name" Text='<%# Eval("product_name") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" CssClass="catalog-price" Text='<%# "\u20B9" + Eval("product_price") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" CssClass="catalog-description" Text='<%# Eval("product_description") %>'></asp:Label>
                        </div>
                    </article>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </section>
</asp:Content>
