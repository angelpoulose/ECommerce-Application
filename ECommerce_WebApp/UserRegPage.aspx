<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegPage.aspx.cs" Inherits="ECommerce_WebApp.UserRegPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body { background-color: #f3f5f4; }
        .auto-style1 {
            height: 30px;
        }
        .user-register-table {
            width: 100%; max-width: 750px; margin: 50px auto; padding: 30px;
            background-color: #ffffff; border-collapse: separate; border-spacing: 0 12px;
            border-radius: 12px; box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }
        .user-register-table .form-title {
            padding: 0 15px 14px; color: #3b5d50; font-size: 30px; font-weight: 600; text-align: left;
        }
        .user-register-table td:first-child { color: #2f2f2f; font-weight: 500; padding: 10px 15px; }
        .user-register-table td:first-child span { color: #2f2f2f; }
        .user-register-table input[type="text"], .user-register-table input[type="password"],
        .user-register-table input[type="number"], .user-register-table input[type="email"],
        .user-register-table input[type="tel"], .user-register-table textarea {
            width: 100%; max-width: 350px; padding: 10px 12px; color: #212529;
            background-color: #ffffff; border: 1px solid #aebbb6; border-radius: 6px;
            box-sizing: border-box; outline: none; transition: border-color 0.3s, box-shadow 0.3s;
        }
        .user-register-table input:focus, .user-register-table textarea:focus {
            border-color: #3b5d50; box-shadow: 0 0 0 3px rgba(59, 93, 80, 0.12);
        }
        .user-register-table span[id*="Validator"] { color: #dc3545; font-size: 12px; }
        .user-register-table input[type="submit"], .user-register-table input[type="button"] {
            background-color: #3b5d50; color: #ffffff; padding: 12px 30px; border: none;
            border-radius: 30px; cursor: pointer; font-weight: 600; transition: background-color 0.3s;
        }
        .user-register-table input[type="submit"]:hover, .user-register-table input[type="button"]:hover { background-color: #314d42; }
        .user-register-table #Label8 { color: #3b5d50; font-weight: 500; }
        @media (max-width: 768px) {
            .user-register-table { max-width: 100%; margin: 20px auto; padding: 15px; }
            .user-register-table td { padding: 6px; }
            .user-register-table input[type="text"], .user-register-table input[type="password"],
            .user-register-table input[type="number"], .user-register-table input[type="email"],
            .user-register-table input[type="tel"], .user-register-table textarea { max-width: 100%; }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="user-register-table">
        <tr><th class="form-title" colspan="5">User Registration Form</th></tr>
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
                <asp:TextBox ID="TextBox_User_Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_User_Name" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
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
            <td>
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_User_age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_User_age" ErrorMessage="Enter Age"></asp:RequiredFieldValidator>
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
            <td>
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_User_Gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
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
            <td>
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_User_Phone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_User_Phone" ErrorMessage="Enter Phone Number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
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
            <td>
                <asp:Label ID="Label5" runat="server" Text="Photo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload_UserPhoto" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload_UserPhoto" ErrorMessage="Upload Photo"></asp:RequiredFieldValidator>
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
            <td>
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_User_Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_User_Address" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
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
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="User name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox_UserName" runat="server" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_User_Password" runat="server"></asp:TextBox>
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
            <td>
                <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_ConfirmPassword" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_User_Password" ControlToValidate="TextBox_ConfirmPassword" ErrorMessage="Password Mismatch"></asp:CompareValidator>
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
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
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
        </table>
</asp:Content>
