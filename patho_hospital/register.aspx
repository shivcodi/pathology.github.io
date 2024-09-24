<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="patho_hospital.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="register.css" />
     <style type="text/css">
        .cnt {
            z-index: 1;
            left: 715px;
            top: 161px;
            position: absolute;
            height: 183px;
            width: 589px;
        }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('image/—Pngtree—hospital%20scientific%20background%20banner%20birth_711190.jpg'); height: 819px; z-index: 1; left: 10px; top: 6px; position: absolute; width: 1798px;">
            <div class="cnt" style="z-index: 1; left: 791px; top: 141px; position: absolute; height: 210px; width: 695px">

                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 271px; top: 61px; position: absolute; bottom: 124px;"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 243px; top: 117px; position: absolute; margin-bottom: 0px" Text="Submit" OnClick="Button1_Click" />

                <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" style="z-index: 1; left: 252px; top: 163px; position: absolute; width: 184px" Text="Label"></asp:Label>

            </div>

            <div></div>
           

            <asp:Label ID="Label1" runat="server" CssClass="cc" style="z-index: 1; left: 846px; top: 204px; position: absolute" Text="Enter Registration No:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Registration No." ForeColor="#FF3300" SetFocusOnError="True" style="z-index: 1; left: 1247px; top: 212px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/pexels-chokniti-khongchum-1197604-2280571.jpg" style="z-index: 1; left: 0px; top: -1px; position: absolute; width: 746px; height: 809px" />

        </div>
    </form>
</body>
</html>
