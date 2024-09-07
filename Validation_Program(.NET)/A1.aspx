<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A1.aspx.cs" Inherits="Project_Validation_.A1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <p>
            Festival Application Form</p>
        <p>
            Name</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</p>
        <p>
            Date of Birth</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True" TextMode="Date" Width="344px"></asp:TextBox>
        </p>
        <p>
            E-mail ID</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" TextMode="Email" Width="276px"></asp:TextBox>
        </p>
        <p>
            Password</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
        </p>
        <p>
            Confirme Password</p>
        <p>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
        </p>
    </form>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
