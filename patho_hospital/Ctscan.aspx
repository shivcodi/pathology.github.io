<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ctscan.aspx.cs" Inherits="patho_hospital.Ctscan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="ctscan.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" CssClass="aa" runat="server" style="z-index: 1; left: 10px; top: 5px; position: absolute; width: 1805px" Text="CT SCAN TEST"></asp:Label>
    
    </div>
        <asp:Label ID="Label2" CssClass="bb" runat="server" style="z-index: 1; left: 13px; top: 61px; position: absolute; width: 1808px" Text="Patient Details"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 10px; top: 121px; position: absolute" Text="Registration No:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 10px; top: 164px; position: absolute; margin-bottom: 0px" Text="Patient Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 149px; top: 122px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 135px; top: 160px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 526px; top: 124px; position: absolute" Text="Age:"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 520px; top: 166px; position: absolute" Text="Gender:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 584px; top: 122px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 598px; top: 165px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label7" CssClass="bb" runat="server" style="z-index: 1; left: 10px; top: 208px; position: absolute; width: 1822px;" Text="Test Details"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 14px; top: 261px; position: absolute" Text="Ref.By:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 87px; top: 260px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 371px; top: 259px; position: absolute" Text="Test Date:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 467px; top: 258px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 17px; top: 314px; position: absolute; width: 115px">Part:</asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 70px; top: 309px; position: absolute; height: 29px; width: 216px; right: 1542px;">
            <asp:ListItem>CT  Angiography</asp:ListItem>
            <asp:ListItem>CT Abdomen Scan</asp:ListItem>
            <asp:ListItem>CT Bone Scan</asp:ListItem>
            <asp:ListItem>Head CT</asp:ListItem>
            <asp:ListItem>CT Chest/Lungs</asp:ListItem>
            <asp:ListItem>Cardiac CT</asp:ListItem>
            <asp:ListItem>CT neck</asp:ListItem>
            <asp:ListItem>Pelvic CT Scan</asp:ListItem>
            <asp:ListItem>CT Scan Kidneys</asp:ListItem>
            <asp:ListItem>Spine</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 17px; top: 372px; position: absolute; right: 1713px" Text="Remark:"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 122px; top: 371px; position: absolute; width: 827px; height: 156px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="btn" runat="server" style="z-index: 1; left: 593px; top: 680px; position: absolute; width: 137px;" Text="Save" OnClick="Button1_Click" />
    </form>
</body>
</html>
