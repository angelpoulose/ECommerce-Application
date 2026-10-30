<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductInsertion.aspx.cs" Inherits="ECommerce_WebApp.ProductInsertion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body { background-color: #f3f5f4; }
        .admin-form { width: 100%; max-width: 750px; margin: 50px auto; padding: 30px; background: #fff; border-collapse: separate; border-spacing: 0 10px; border-radius: 12px; box-shadow: 0 5px 25px rgba(0,0,0,.08); }
        .admin-form .form-title { padding: 0 15px 8px; color: #3b5d50; font-size: 30px; font-weight: 600; text-align: left; }
        .admin-form td:first-child { width: 36%; padding: 7px 15px; color: #2f2f2f; font-weight: 500; vertical-align: top; white-space: nowrap; }
        .admin-form input[type="text"], .admin-form input[type="number"], .admin-form textarea, .admin-form select, .admin-form input[type="file"] { width: 100%; max-width: 390px; padding: 10px 12px; color: #212529; background: #fff; border: 1px solid #aebbb6; border-radius: 6px; box-sizing: border-box; outline: none; }
        .admin-form textarea { min-height: 100px; resize: vertical; }
        .admin-form input:focus, .admin-form textarea:focus, .admin-form select:focus { border-color: #3b5d50; box-shadow: 0 0 0 3px rgba(59,93,80,.12); }
        .admin-form input[type="submit"], .admin-form input[type="button"] { background: #3b5d50; color: #fff; padding: 12px 30px; border: 0; border-radius: 30px; cursor: pointer; font-weight: 600; transition: background-color .3s; }
        .admin-form input[type="submit"]:hover, .admin-form input[type="button"]:hover { background: #314d42; }
        .admin-form .form-message { color: #3b5d50; font-weight: 500; }
        @media (max-width: 768px) { .admin-form { max-width: 100%; margin: 20px auto; padding: 15px; } .admin-form tr { display: block; margin-bottom: 8px; } .admin-form td { display: block; width: auto !important; padding: 5px 8px !important; } .admin-form input[type="text"], .admin-form input[type="number"], .admin-form textarea, .admin-form select, .admin-form input[type="file"] { max-width: 100%; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="admin-form">
        <tr><th class="form-title" colspan="2">Add Product</th><th class="form-title">&nbsp;</th><th class="form-title">&nbsp;</th><th class="form-title">&nbsp;</th></tr>
        <tr><td><asp:Label ID="Label1" runat="server" Text="Category Name :"></asp:Label></td><td><asp:DropDownList ID="DropDownList_Category" runat="server" Width="751px"></asp:DropDownList></td><td>&nbsp;</td><td>&nbsp;</td><td></td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Product Name :"></asp:Label></td><td><asp:TextBox ID="TextBox_Prod_Name" runat="server"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Prod_Name" ErrorMessage="Enter Product name" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label3" runat="server" Text="Product Image :"></asp:Label></td><td><asp:FileUpload ID="FileUp_prod_image" runat="server" /></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUp_prod_image" ErrorMessage="Upload Product image " Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label4" runat="server" Text="Product Description :"></asp:Label></td><td><asp:TextBox ID="TextBox_prod_desc" runat="server" TextMode="MultiLine"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_prod_desc" ErrorMessage="Enter Product Description" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label5" runat="server" Text="Product Price :"></asp:Label></td><td><asp:TextBox ID="TextBox_Prod_price" runat="server"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_Prod_price" ErrorMessage="Enter Product price" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label6" runat="server" Text="Product Brand :"></asp:Label></td><td><asp:TextBox ID="TextBox_Prod_Brand" runat="server"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox_Prod_Brand" ErrorMessage="Enter Product brand" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label7" runat="server" Text="Product Stock :"></asp:Label></td><td><asp:TextBox ID="TextBox_Prod_Stock" runat="server"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_Prod_Stock" ErrorMessage="Enter Product stock" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td></td><td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" /></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td></td><td><asp:Label ID="Label_Prod_Insertion" CssClass="form-message" runat="server" Text="Label"></asp:Label></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    </table>
</asp:Content>
