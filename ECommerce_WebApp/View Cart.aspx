<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="View Cart.aspx.cs" Inherits="ECommerce_WebApp.View_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        form table.w-100 { width: min(100% - 32px, 1120px) !important; margin: 42px auto 56px; border-collapse: separate; border-spacing: 0; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.08); color: #3b5d50; font-family: "Segoe UI", Arial, sans-serif; }
        form table.w-100 > tbody > tr:first-child > td:first-child { padding: 24px; }
        form table.w-100 > tbody > tr:first-child > td:first-child table { width: 100% !important; border-collapse: collapse; }
        form table.w-100 > tbody > tr:first-child > td:first-child table th { padding: 14px 12px; background: #29483b; color: #fff; text-align: left; font-size: 12px; text-transform: uppercase; letter-spacing: .06em; }
        form table.w-100 > tbody > tr:first-child > td:first-child table td { padding: 12px; border-bottom: 1px solid #edf0ed; vertical-align: middle; }
        form table.w-100 > tbody > tr:first-child > td:first-child table tr:nth-child(even) td { background: #f8faf8; }
        form table.w-100 > tbody > tr:first-child > td:first-child table img { width: 76px !important; height: 84px !important; object-fit: cover; border-radius: 8px; }
        form table.w-100 > tbody > tr:first-child > td:first-child table a { color: #2a7b4f; font-weight: 600; }
        form table.w-100 input[type=submit], form table.w-100 input[type=button] { padding: 10px 18px; border: 0; border-radius: 7px; background: #29483b; color: #fff; font-weight: 600; cursor: pointer; }
        form table.w-100 input[type=submit]:hover, form table.w-100 input[type=button]:hover { background: #1f6b43; }
        form table.w-100 input[type=text], form table.w-100 select { padding: 8px 10px; border: 1px solid #dce4dd; border-radius: 6px; }
        form table.w-100 input[type=radio] { margin-right: 8px; accent-color: #2a7b4f; }
        @media (max-width: 700px) { form table.w-100 { width: calc(100% - 20px) !important; margin: 20px auto; font-size: 13px; } form table.w-100 > tbody > tr:first-child > td:first-child { padding: 10px; overflow-x: auto; } form table.w-100 > tbody > tr:first-child > td:first-child table { min-width: 650px; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView_Cart" runat="server" AutoGenerateColumns="False" DataKeyNames="Cart_id" OnRowCancelingEdit="GridView_Cart_RowCancelingEdit" OnRowDeleting="GridView_Cart_RowDeleting" OnRowEditing="GridView_Cart_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="589px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="product_name" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="product_image" HeaderText="Product Image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="product_price" HeaderText="Product Price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="sub_Total" HeaderText="Sub-Total" />
                    </Columns>
                </asp:GridView>
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
        </tr>
        <tr>
            <td>
                <asp:Label ID="Upd_Label" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:RadioButtonList ID="paymentModeRB" runat="server">
                        <asp:ListItem>UPI</asp:ListItem>
                        <asp:ListItem>Credit/Debit/ATM Card</asp:ListItem>
                        <asp:ListItem>EMI</asp:ListItem>
                        <asp:ListItem>Net Banking</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Bill" />
                </asp:Panel>
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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
