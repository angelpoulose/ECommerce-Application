<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="ECommerce_WebApp.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body { background-color: #f3f5f4; }
        .auto-style1 { height: 30px; }
        .admin-register-table {
            width: 100%; max-width: 750px; margin: 50px auto; padding: 30px;
            background-color: #ffffff; border-collapse: separate; border-spacing: 0 12px;
            border-radius: 12px; box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }
        .admin-register-table .form-title {
            padding: 0 15px 14px; color: #3b5d50; font-size: 30px; font-weight: 600; text-align: left;
        }
        .admin-register-table td:first-child { color: #2f2f2f; font-weight: 500; padding: 10px 15px; }
        .admin-register-table td:first-child span { color: #2f2f2f; }
        .admin-register-table input[type="text"],
        .admin-register-table input[type="password"],
        .admin-register-table input[type="number"],
        .admin-register-table input[type="email"],
        .admin-register-table input[type="tel"] {
            width: 100%; max-width: 350px; padding: 10px 12px; color: #212529;
            background-color: #ffffff; border: 1px solid #aebbb6;
            border-radius: 6px; box-sizing: border-box; outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .admin-register-table input:focus { border-color: #3b5d50; box-shadow: 0 0 0 3px rgba(59, 93, 80, 0.12); }
        .admin-register-table span[id*="Validator"] { color: #dc3545; font-size: 12px; }
        .admin-register-table input[type="submit"],
        .admin-register-table input[type="button"] {
            background-color: #3b5d50; color: #ffffff; padding: 12px 30px; border: none;
            border-radius: 30px; cursor: pointer; font-weight: 600; transition: background-color 0.3s;
        }
        .admin-register-table input[type="submit"]:hover,
        .admin-register-table input[type="button"]:hover { background-color: #314d42; }
        .admin-register-table #Label7 { color: #3b5d50; font-weight: 500; }
        @media (max-width: 768px) {
            .admin-register-table { max-width: 100%; margin: 20px auto; padding: 15px; }
            .admin-register-table td { padding: 6px; }
            .admin-register-table input[type="text"],
            .admin-register-table input[type="password"],
            .admin-register-table input[type="number"],
            .admin-register-table input[type="email"],
            .admin-register-table input[type="tel"] { max-width: 100%; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="admin-register-table">
    <tr><th class="form-title" colspan="5">Admin Registration Form</th></tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox_AdminName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_AdminName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox_AdminAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_AdminAge" ErrorMessage="Enter age"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Phone Number"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox_AdminPhone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_AdminPhone" ErrorMessage="Enter valid Phone Number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1">
        </td>
        <td class="auto-style1">
        </td>
        <td class="auto-style1">
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox_AdminEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_AdminEmail" ErrorMessage="Enter valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox_AdminUsername" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox_AdminPassword" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox_AdminConfirmPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_AdminPassword" ControlToValidate="TextBox_AdminConfirmPassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
