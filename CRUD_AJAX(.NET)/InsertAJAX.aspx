<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertAJAX.aspx.cs" Inherits="AJAX_CRUD_6_.InsertAJAX" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        width: 250px;
        }
        .auto-style2 {
        width: 58px;
        }
        .auto-style3 {
        width: 59px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                <td class="auto-style1">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style1">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td colspan="2">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style1" colspan="2">
                <input type="button" id="btnInsert" value="Insert" onclick="insert();"class="auto-style2"/>
                <input type="button" id="btnDisplay" value="Display" onclick="display();"class="auto-style3"/>
                <input type="button" id="btnDelete" value="Delete" onclick="delete1();"/>
                <input type="button" id="btnUpdate" value="Update"onclick="update1();"/>
                </td>
                </tr>
                </table>
                <br />
                <div id="d1"></div>
        </div>
    </form>
    <script type="text/javascript">
        function insert() {
            var name = document.getElementById("txtName").value;
            var city = document.getElementById("txtCity").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "insert.aspx?nm=" + name + "&ct=" + city + "&opr=insert",
                false);
            xmlhttp.send(null);
            document.getElementById("txtName").value = "";
            document.getElementById("txtCity").value = "";
            display();
            alert("Record Inserted Successfully.....");
        }
        function display() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "insert.aspx?opr=display", false);
            xmlhttp.send(null);
            document.getElementById("d1").innerHTML = xmlhttp.responseText;
        }
        function delete1() {
            var name = document.getElementById("txtName").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "insert.aspx?nm=" + name + "&opr=delete", false);
            xmlhttp.send(null);
            document.getElementById("txtName").value = "";
            display();
            alert("Record Deleted Successfully");
        }
        function update1() {
            var oldname = document.getElementById("txtName").value;
            var newname = document.getElementById("txtCity").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "insert.aspx?oldname=" + oldname + "&newname=" +
                newname + "&opr=update", false);
            xmlhttp.send(null);
            document.getElementById("txtName").value = "";
            document.getElementById("txtCity").value = "";
            display();
            alert("Record Upadated Successfully");
        }
    </script>
</body>
</html>
