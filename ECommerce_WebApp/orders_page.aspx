<%@ Page Title="" Language="C#" MasterPageFile="~/Site2_nav_barOnly_.Master" AutoEventWireup="true" CodeBehind="orders_page.aspx.cs" Inherits="ECommerce_WebApp.orders_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        form table.w-100 { width: min(100% - 32px, 1120px) !important; margin: 42px auto 56px; border-collapse: separate; border-spacing: 0; background: #fff; border: 1px solid #e6e8e5; border-radius: 14px; box-shadow: 0 12px 36px rgba(28,39,32,.08); color: #3b5d50; font-family: "Segoe UI", Arial, sans-serif; }
        form table.w-100 > tbody > tr:first-child > td:first-child { padding: 24px; }
        form table.w-100 > tbody > tr:first-child > td:first-child table { width: 100% !important; border-collapse: collapse; }
        form table.w-100 > tbody > tr:first-child > td:first-child table th { padding: 14px 12px; background: #29483b; color: #fff; text-align: left; font-size: 12px; text-transform: uppercase; letter-spacing: .06em; }
        form table.w-100 > tbody > tr:first-child > td:first-child table td { padding: 12px; border-bottom: 1px solid #edf0ed; vertical-align: middle; }
        form table.w-100 > tbody > tr:first-child > td:first-child table tr:nth-child(even) td { background: #f8faf8; }
        form table.w-100 img { width: 76px !important; height: 84px !important; object-fit: cover; border-radius: 8px; }
        form table.w-100 a { color: #2a7b4f; font-weight: 600; }
        @media (max-width: 700px) { form table.w-100 { width: calc(100% - 20px) !important; margin: 20px auto; } form table.w-100 > tbody > tr:first-child > td:first-child { padding: 10px; overflow-x: auto; } form table.w-100 > tbody > tr:first-child > td:first-child table { min-width: 700px; } }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:ImageField DataImageUrlField="product_image" HeaderText="product image">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="product_name" HeaderText="Product name" />
                        <asp:BoundField DataField="Product_price" HeaderText="product price" />
                        <asp:BoundField DataField="order_quantity" HeaderText="quantity" />
                        <asp:BoundField DataField="order_status" HeaderText="status" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("product_id") %>' OnCommand="LinkButton1_Command">Click to add Review</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
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
