<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CategoryInsertion.aspx.cs" Inherits="ECommerce_WebApp.CategoryInsertion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body { background-color: #f3f5f4; }
        .admin-form { width: 100%; max-width: 750px; margin: 50px auto; padding: 30px; background: #fff; border-collapse: separate; border-spacing: 0 14px; border-radius: 12px; box-shadow: 0 5px 25px rgba(0,0,0,.08); }
        .admin-form .form-title { padding: 0 15px 10px; color: #3b5d50; font-size: 30px; font-weight: 600; text-align: left; }
        .admin-form td:first-child { width: 36%; padding: 8px 15px; color: #2f2f2f; font-weight: 500; vertical-align: top; white-space: nowrap; }
        .admin-form input[type="text"], .admin-form textarea, .admin-form select, .admin-form input[type="file"] { width: 100%; max-width: 390px; padding: 10px 12px; color: #212529; background: #fff; border: 1px solid #aebbb6; border-radius: 6px; box-sizing: border-box; outline: none; }
        .admin-form textarea { min-height: 110px; resize: vertical; }
        .admin-form input:focus, .admin-form textarea:focus, .admin-form select:focus { border-color: #3b5d50; box-shadow: 0 0 0 3px rgba(59,93,80,.12); }
        .admin-form input[type="submit"], .admin-form input[type="button"] { background: #3b5d50; color: #fff; padding: 12px 30px; border: 0; border-radius: 30px; cursor: pointer; font-weight: 600; transition: background-color .3s; }
        .admin-form input[type="submit"]:hover, .admin-form input[type="button"]:hover { background: #314d42; }
        .admin-form .form-message { color: #3b5d50; font-weight: 500; }
        @media (max-width: 768px) { .admin-form { max-width: 100%; margin: 20px auto; padding: 15px; } .admin-form tr { display: block; margin-bottom: 10px; } .admin-form td { display: block; width: auto !important; padding: 6px 8px !important; } .admin-form input[type="text"], .admin-form textarea, .admin-form select, .admin-form input[type="file"] { max-width: 100%; } }
        .auto-style1 {
            width: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="admin-form">
        <tr><th class="form-title" colspan="2">Add Category</th><th class="form-title" style="width: 49px">&nbsp;</th><th class="form-title">&nbsp;</th></tr>
        <tr><td><asp:Label ID="Label1" runat="server" Text="Category Name :"></asp:Label></td><td><asp:TextBox ID="TB_CatName" runat="server" Width="685px"></asp:TextBox></td><td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_CatName" ErrorMessage="Enter category name" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Category Image :"></asp:Label></td><td><asp:FileUpload ID="FileUpload_CatImage" runat="server" Width="756px" /></td><td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload_CatImage" ErrorMessage="Upload category image" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td></tr>
        <tr><td><asp:Label ID="Label3" runat="server" Text="Category Description :"></asp:Label></td><td><asp:TextBox ID="TextBox_CatDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td><td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_CatDesc" ErrorMessage="Enter category description" Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td><td>&nbsp;</td></tr>
        <tr><td></td><td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" /></td><td class="auto-style1">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td></td><td><asp:Label ID="Cat_Ins_Label" CssClass="form-message" runat="server" Text="Label"></asp:Label></td><td class="auto-style1">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
</asp:Content>
