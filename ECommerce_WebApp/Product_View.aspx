<%@ Page Title="Product details" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="Product_View.aspx.cs" Inherits="ECommerce_WebApp.Product_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="product-detail-section">
        <div class="container">
            <div class="product-detail-card">
                <div class="product-detail-image-wrap">
                    <asp:Image ID="Image1" runat="server" CssClass="product-detail-image" AlternateText="Product image" />
                </div>
                <div class="product-detail-info">
                    <p class="catalog-eyebrow">Thoughtfully made for your home</p>
                    <h1 class="product-detail-title"><asp:Label ID="Label1" runat="server" Text="Product"></asp:Label></h1>
                    <p class="product-detail-price">&#8377;<asp:Label ID="Label2" runat="server" Text="0"></asp:Label></p>
                    <p class="product-detail-description"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
                    <div class="product-detail-brand"><span>Brand</span><asp:Label ID="Label4" runat="server" Text=""></asp:Label></div>
                    <div class="product-purchase-row">
                        <span class="quantity-label">Quantity</span>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select quantity-select" aria-label="Quantity">
                        </asp:DropDownList>
                    </div>
                    <div class="product-detail-actions">
                        <asp:Button ID="AddToCartBt" runat="server" CssClass="btn btn-primary" Text="Add to cart" OnClick="Button1_Click" />
                        <asp:Button ID="ViewCartBt" runat="server" CssClass="btn btn-outline-dark" Text="View cart" OnClick="ViewCartBt_Click" />
                    </div>
                    <asp:Label ID="Label5" runat="server" CssClass="cart-feedback" Text="" Visible="False"></asp:Label>
                    <asp:Button ID="ContinueBt" runat="server" CssClass="btn continue-browsing" Text="Continue browsing categories" PostBackUrl="~/UserHome.aspx" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
