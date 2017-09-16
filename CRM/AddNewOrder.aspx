<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewOrder.aspx.cs" Inherits="CRM.AddNewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <table>

            <tr>
                <td>Order Date</td>
                <td>
                    <%--<input type="date" id="dtOrderDate" runat="server"/>--%>
                    <asp:TextBox ID="txtOrderDate" runat="server" TextMode="Date" required=""></asp:TextBox>
                    <%--<asp:RegularExpressionValidator ID="revOrderDate" runat="server" ErrorMessage="Please enter valid Order Date"
                        ControlToValidate="txtOrderDate" ForeColor="Red" ></asp:RegularExpressionValidator>--%>
                </td>
            </tr>

            <tr>
                <td>Order Number</td>
                <td>
                    <asp:TextBox ID="txtOrderNumber" runat="server" TextMode="Number" required=""></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Customer Id</td>
                <td>
                    <asp:TextBox ID="txtCustomerId" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Total Amount</td>
                <td>
                    <asp:TextBox ID="txtTotalAmount" runat="server"> </asp:TextBox> <%--TextMode="Number"--%>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                </td>
            </tr>

        </table>

    </div>

    </div>

</asp:Content>
