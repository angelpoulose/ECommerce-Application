<%@ Page Title="Edit Products" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ECommerce_WebApp.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .edit-page { min-height: 52vh; padding: 56px 24px 80px; background: #eff2f1; }
        .edit-page__inner { max-width: 1200px; margin: 0 auto; }
        .edit-page__title { margin: 0 0 8px; color: #2f453b; font-size: clamp(28px, 4vw, 38px); font-weight: 700; letter-spacing: -1px; }
        .edit-page__intro { margin: 0 0 28px; color: #6a6a6a; font-size: 15px; }
        .edit-grid-wrap { overflow-x: auto; border: 1px solid #e0e7e3; border-radius: 14px; background: #fff; box-shadow: 0 8px 24px rgba(33, 51, 43, .07); }
        .edit-grid { width: 100%; min-width: 1050px; border-collapse: collapse; color: #48544e; font-size: 14px; }
        .edit-grid th { padding: 16px 14px; background: #3b5d50; color: #fff; text-align: left; font-size: 12px; font-weight: 700; letter-spacing: .06em; text-transform: uppercase; white-space: nowrap; }
        .edit-grid td { padding: 14px; border-bottom: 1px solid #edf0ee; vertical-align: middle; }
        .edit-grid tr:last-child td { border-bottom: 0; }
        .edit-grid tr:nth-child(even) td { background: #f8faf9; }
        .edit-grid img { width: 128px !important; height: 96px !important; border-radius: 8px; object-fit: cover; }
        .edit-grid a { display: inline-block; margin-right: 8px; color: #3b5d50; font-weight: 700; text-decoration: none; }
        .edit-grid a:hover { color: #a96f32; text-decoration: underline; }
        .edit-grid input[type="text"], .edit-grid input[type="file"] { max-width: 190px; padding: 8px 10px; border: 1px solid #cfd9d3; border-radius: 7px; background: #fff; color: #3d4943; font: inherit; }
        .edit-grid input:focus { outline: 2px solid #dba854; outline-offset: 1px; }
        .edit-status { display: block; min-height: 24px; margin-top: 18px; color: #3b5d50; font-weight: 600; }
        @media (max-width: 600px) { .edit-page { padding: 40px 16px 60px; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="edit-page">
        <div class="edit-page__inner">
            <h1 class="edit-page__title">Edit products</h1>
            <p class="edit-page__intro">Review product listings and update their details.</p>
            <div class="edit-grid-wrap">
                <asp:GridView ID="GridView1" runat="server" CssClass="edit-grid" GridLines="None" CellPadding="0" AutoGenerateColumns="False" DataKeyNames="product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:CommandField HeaderText="Actions" ShowEditButton="True" />
                        <asp:BoundField DataField="product_id" HeaderText="ID" />
                        <asp:BoundField DataField="cat_id" HeaderText="Category ID" />
                        <asp:BoundField DataField="product_name" HeaderText="Product" />
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate><asp:FileUpload ID="FileUpload1" runat="server" /></EditItemTemplate>
                            <ItemTemplate><asp:Image ID="Image1" runat="server" Height="96px" Width="128px" ImageUrl='<%# Eval("product_image") %>' /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="product_description" HeaderText="Description" />
                        <asp:BoundField DataField="product_price" HeaderText="Price" />
                        <asp:BoundField DataField="product_status" HeaderText="Status" />
                        <asp:BoundField DataField="product_stock" HeaderText="Stock" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:Label ID="Label1" runat="server" CssClass="edit-status" Text=""></asp:Label>
        </div>
    </main>
</asp:Content>
