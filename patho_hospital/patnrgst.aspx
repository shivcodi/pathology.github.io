<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patnrgst.aspx.cs" Inherits="patho_hospital.patnrgst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="ptnrgs.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #006666; height: 657px; width: 1799px;">
    
        <asp:Label ID="Label1" CssClass="aa" runat="server" style="z-index: 1; left: 16px; top: 25px; position: absolute; width: 1783px" Text="Patient Registration Details"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 23px; top: 109px; position: absolute" Text="Registration No:"></asp:Label>
        <asp:Label ID="Rgno" runat="server" style="z-index: 1; left: 163px; top: 109px; position: absolute; width: 54px"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 25px; top: 155px; position: absolute" Text="Patient Name:"></asp:Label>
    
        <asp:Label ID="name" runat="server" style="z-index: 1; left: 150px; top: 152px; position: absolute"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 467px; top: 114px; position: absolute" Text="Age:"></asp:Label>
        <asp:Label ID="age" runat="server" style="z-index: 1; left: 530px; top: 114px; position: absolute"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 449px; top: 158px; position: absolute" Text="Gender:"></asp:Label>
        <asp:Label ID="gender" runat="server" style="z-index: 1; left: 527px; top: 157px; position: absolute; height: 23px"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 917px; top: 114px; position: absolute; height: 22px" Text="Sample Collected On:"></asp:Label>
        <asp:Label ID="tstdt" runat="server" style="z-index: 1; left: 1105px; top: 116px; position: absolute"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 911px; top: 159px; position: absolute" Text="Ref.By:"></asp:Label>
        <asp:Label ID="doc" runat="server" style="z-index: 1; left: 983px; top: 161px; position: absolute"></asp:Label>
        <asp:Label ID="Label10" cssClass="aa" runat="server" style="z-index: 1; left: 19px; top: 221px; position: absolute; width: 1265px" Text="Test(s) Prescribed For"></asp:Label>
    
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 48px; top: 319px; position: absolute" Text="Blood Test"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FFFFCC" OnClick="LinkButton1_Click" style="z-index: 1; left: 161px; top: 318px; position: absolute; right: 1576px;">CLICK</asp:LinkButton>
    
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 408px; top: 323px; position: absolute" Text="CT SCAN"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 838px; top: 318px; position: absolute" Text="MRI Test"></asp:Label>
        <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#FFFFCC" style="z-index: 1; left: 510px; top: 321px; position: absolute">CLICK</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#FFFFCC" OnClick="LinkButton5_Click1" style="z-index: 1; left: 954px; top: 316px; position: absolute">CLICK</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
