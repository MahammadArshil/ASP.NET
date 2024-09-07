<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation_1.aspx.cs" Inherits="Project_Validation_.Validation_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Festival Application Form</p>
        <p>
            Name</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" Display="Dynamic" ErrorMessage="*Enter First Name" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" Display="Dynamic" ErrorMessage="*Enter Last Name" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
        </p>
        <p>
            Date of Birth</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True" TextMode="Date" Width="344px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="Black" BorderStyle="Ridge" Display="Dynamic" ErrorMessage="*Enter Valid Birthdate" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
        </p>
        <p>
            E-mail ID</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" TextMode="Email" Width="276px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" Display="Dynamic" ErrorMessage="*Enter Email ID" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" Width="125px"></asp:RequiredFieldValidator>
        </p>
        <p>
            Password</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" Display="Dynamic" ErrorMessage="*Enter Password" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" Width="161px"></asp:RequiredFieldValidator>
        </p>
        <p>
            Confirme Password</p>
        <p>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" BorderColor="Black" BorderStyle="Groove" ControlToCompare="TextBox6" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*Re-enter Password" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" Width="138px"></asp:CompareValidator>
        </p>
    </form>
</body>
</html>
