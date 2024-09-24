<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="patho_hospital.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="report.css" />
     
    
            
        
   
     <script type="text/javascript">
        function printForm() {
            window.print();
        }
    </script>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 22px; width: 1798px">
    <form id="form1" runat="server">
    <div>
     
        <asp:Label ID="Label1" CssClass="aa" runat="server" style="z-index: 1; left: 3px; top: 0px; position: absolute; width: 1775px; height: 50px;" Text="Blood Test Report"></asp:Label>
    
    </div>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 12px; top: 66px; position: absolute" Text="Registration No:"></asp:Label>
        <asp:Label ID="regno" runat="server" style="z-index: 1; left: 152px; top: 66px; position: absolute"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 12px; top: 111px; position: absolute" Text="Patient Name:"></asp:Label>
        <asp:Label ID="name" runat="server" style="z-index: 1; left: 133px; top: 110px; position: absolute"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 319px; top: 68px; position: absolute" Text="Age:"></asp:Label>
        <asp:Label ID="age" runat="server" style="z-index: 1; left: 366px; top: 68px; position: absolute"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 309px; top: 108px; position: absolute" Text="Gender:"></asp:Label>
        <asp:Label ID="gndr" runat="server" style="z-index: 1; left: 387px; top: 108px; position: absolute"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 561px; top: 69px; position: absolute" Text="Sample Collected On:"></asp:Label>
        <asp:Label ID="tstdt" runat="server" style="z-index: 1; left: 748px; top: 71px; position: absolute"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 563px; top: 108px; position: absolute" Text="Ref.By:"></asp:Label>
        <asp:Label ID="doc" runat="server" style="z-index: 1; left: 634px; top: 108px; position: absolute"></asp:Label>
        <asp:Label ID="Label9" CssClass="bb" runat="server" style="z-index: 1; left: 7px; top: 166px; position: absolute; width: 1286px" Text="Test Details:"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="z-index: 1; left: 11px; top: 223px; position: absolute; height: 301px; width: 1042px">
            <Columns>
                <asp:BoundField DataField="Test" HeaderText="Test">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Investigation" HeaderText="Investigation">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Result" HeaderText="Result">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Indication" HeaderText="Indication">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Reference_value" HeaderText="Reference_value">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Unit" HeaderText="Unit">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ABC %>" SelectCommand="SELECT * FROM [Report]"></asp:SqlDataSource>
        <asp:Button ID="Button1" CssClass="btn"  runat="server" style="z-index: 1; left: 357px; top: 631px; position: absolute; width: 151px;" Text="Clear" OnClick="Button1_Click" />
        <asp:Button ID="Button2" CssClass="btn" runat="server" style="z-index: 1; left: 530px; top: 632px; position: absolute; width: 132px;" Text="Print" OnClientClick="printForm(); return false;" />
    </form>
</body>
</html>
