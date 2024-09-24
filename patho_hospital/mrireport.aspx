<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mrireport.aspx.cs" Inherits="patho_hospital.mrireport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="mrirpt.css" />
     <script type="text/javascript">
        function printForm() {
            window.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
         <asp:Label ID="Label1" CssClass="aa" runat="server" style="z-index: 1; left: 9px; top: 15px; position: absolute; width: 1773px" Text="MRI LABORATORY REPORT"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 6px; top: 76px; position: absolute; height: 17px;" Text="Registration No:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 8px; top: 124px; position: absolute; right: 1699px;" Text="Patient Name:"></asp:Label>
        <asp:Label ID="num" runat="server" style="z-index: 1; left: 150px; top: 73px; position: absolute"></asp:Label>
        <asp:Label ID="name" runat="server" style="z-index: 1; left: 133px; top: 123px; position: absolute"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 287px; top: 73px; position: absolute" Text="Age:"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 289px; top: 128px; position: absolute" Text="Gender:"></asp:Label>
        <asp:Label ID="age" runat="server" style="z-index: 1; left: 346px; top: 74px; position: absolute"></asp:Label>
        <asp:Label ID="gender" runat="server" style="z-index: 1; left: 369px; top: 125px; position: absolute"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 517px; top: 75px; position: absolute" Text="Test Date:"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 516px; top: 125px; position: absolute; bottom: 400px" Text="Ref.By:"></asp:Label>
        <asp:Label ID="test" runat="server" style="z-index: 1; left: 619px; top: 75px; position: absolute"></asp:Label>
        <asp:Label ID="doc" runat="server" style="z-index: 1; left: 596px; top: 128px; position: absolute"></asp:Label>
        <asp:Label ID="Label10" CssClass="bb" runat="server" style="z-index: 1; left: 11px; top: 186px; position: absolute; width: 1036px; margin-bottom: 0px" Text="Test Details:"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 14px; top: 247px; position: absolute; right: 1725px">Part:</asp:Label>
        <asp:Label ID="prt" runat="server" style="z-index: 1; left: 71px; top: 246px; position: absolute; width: 84px"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 11px; top: 305px; position: absolute" Text="Remark:"></asp:Label>
        <asp:TextBox ID="rmk" runat="server" style="z-index: 1; left: 94px; top: 301px; position: absolute; width: 677px; height: 173px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="btn" runat="server" style="z-index: 1; left: 1007px; top: 472px; position: absolute; width: 101px" Text="Print"  OnClientClick="printForm(); return false;"  />
        <asp:Button ID="Button2" CssClass="btn" runat="server" style="z-index: 1; left: 1116px; top: 470px; position: absolute; width: 87px" Text="Back" OnClick="Button2_Click" />
    </form>
</body>
</html>

   