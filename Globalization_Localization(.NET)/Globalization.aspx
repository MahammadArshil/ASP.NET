<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Globalization.aspx.cs" Inherits="Globalization_Localization_Demo.Globalization" UICulture="Auto" Culture="Auto" meta:resourcekey="PageResource1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="This is an example Label" meta:resourcekey="Label1Resource1"></asp:Label>

            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Name" meta:resourcekey="Label4Resource1"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="156px" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Father Name" meta:resourcekey="Label5Resource1"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="156px" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Contact" meta:resourcekey="Label6Resource1"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="156px" meta:resourcekey="TextBox3Resource1"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                <asp:ListItem Value="en">English</asp:ListItem>
                <asp:ListItem Value="ur">Urdu</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

        </div>
        <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1"></asp:Label>
    </form>
</body>
</html>
