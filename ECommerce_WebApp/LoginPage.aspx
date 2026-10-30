<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ECommerce_WebApp.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body { background-color: #f3f5f4; }
        .login-table {
            width: 100%; max-width: 600px; margin: 50px auto; padding: 30px;
            background-color: #ffffff; border-collapse: separate; border-spacing: 0 16px;
            border-radius: 12px; box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }
        .login-table .form-title {
            padding: 0 15px 14px; color: #3b5d50; font-size: 30px; font-weight: 600; text-align: left;
        }
        .login-table td:first-child { color: #2f2f2f; font-weight: 500; padding: 10px 15px; }
        .login-table td:first-child span { color: #2f2f2f; }
        .login-table input[type="text"], .login-table input[type="password"] {
            width: 100%; max-width: 350px; padding: 10px 12px; color: #212529;
            background-color: #ffffff; border: 1px solid #aebbb6; border-radius: 6px;
            box-sizing: border-box; outline: none; transition: border-color 0.3s, box-shadow 0.3s;
        }
        .login-table input:focus { border-color: #3b5d50; box-shadow: 0 0 0 3px rgba(59, 93, 80, 0.12); }
        .login-table input[type="submit"], .login-table input[type="button"] {
            background-color: #3b5d50; color: #ffffff; padding: 12px 30px; border: none;
            border-radius: 30px; cursor: pointer; font-weight: 600; transition: background-color 0.3s;
        }
        .login-table input[type="submit"]:hover, .login-table input[type="button"]:hover { background-color: #314d42; }
        @media (max-width: 768px) {
            .login-table { max-width: 100%; margin: 20px auto; padding: 15px; }
            .login-table td { padding: 6px; }
            .login-table input[type="text"], .login-table input[type="password"] { max-width: 100%; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="login-table">
        <tr><th class="form-title" colspan="3">Login</th></tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="User_NameTB" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="UserPasswordTB" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
