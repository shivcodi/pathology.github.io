﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bloodtest.aspx.cs" Inherits="patho_hospital.bloodtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bloodtest.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" CssClass="aa" runat="server" style="z-index: 1; left: 7px; top: 13px; position: absolute; width: 1853px" Text="BLOOD TEST DETAILS"></asp:Label>
        <asp:Label ID="Label2" CssClass="bb" runat="server" style="z-index: 1; left: 8px; top: 69px; position: absolute; width: 1848px; margin-bottom: 0px" Text="Patient Details:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 20px; top: 132px; position: absolute; height: 22px; width: 91px" Text="Registration No:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 15px; top: 201px; position: absolute" Text="Patient Name:"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 375px; top: 143px; position: absolute" Text="Age:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 133px; top: 138px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 367px; top: 195px; position: absolute; right: 1419px;" Text="Gender:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 140px; top: 196px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 426px; top: 140px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 779px; top: 134px; position: absolute" Text="Sample Collected On:"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 778px; top: 191px; position: absolute" Text="Ref.By:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 969px; top: 134px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" style="z-index: 1; left: 854px; top: 192px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="btn" runat="server" style="z-index: 1; left: 8px; top: 248px; position: absolute; width: 293px" Text="Test Details" OnClick="Button1_Click" />
        <asp:Button ID="Button2" CssClass="btn" runat="server" style="z-index: 1; left: 306px; top: 249px; position: absolute; width: 334px" Text="DLC" OnClick="Button2_Click" />
        <asp:Button ID="Button3" CssClass="btn" runat="server" style="z-index: 1; left: 645px; top: 247px; position: absolute; width: 308px" Text="RBC Morphology" OnClick="Button3_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowEditing="GridView_Rowedit"
             OnRowDeleting="Gridview_Delete" OnRowUpdating="Gridview_Update" OnRowCommand="Gridview1_Rowcommand" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" ShowFooter="True" style="z-index: 1; left: 11px; top: 309px; position: absolute; height: 233px; width: 1218px" OnRowCancelingEdit="GridView1_RowCancelingEdit1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    
                        
                    
                    <FooterTemplate>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add New" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        <asp:Button ID="Button8" runat="server" CssClass="Selected" CommandName="Insert" Text="Select" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="Chk" runat="server"  OnCheckedChanged="chk_CheckedChanged"/>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Test">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Test") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="tsttxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Test") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Investigation">
                   
                    <FooterTemplate>
                        <asp:TextBox ID="invttxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lblinvestigation" runat="server" Text='<%# Bind("Investigation") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Result">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Result") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="rsttxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Result") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Indication">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Indication") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="indtxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Indication") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reference_value">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Reference_value") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="rfrvtxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Reference_value") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Unit">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Unit") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="utxt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Unit") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ABC %>" DeleteCommand="DELETE FROM [bloodtest] WHERE [Investigation] = @original_Investigation AND (([Test] = @original_Test) OR ([Test] IS NULL AND @original_Test IS NULL)) AND (([Result] = @original_Result) OR ([Result] IS NULL AND @original_Result IS NULL)) AND (([Indication] = @original_Indication) OR ([Indication] IS NULL AND @original_Indication IS NULL)) AND (([Reference_value] = @original_Reference_value) OR ([Reference_value] IS NULL AND @original_Reference_value IS NULL)) AND (([Unit] = @original_Unit) OR ([Unit] IS NULL AND @original_Unit IS NULL))" InsertCommand="INSERT INTO [bloodtest] ([Test], [Investigation], [Result], [Indication], [Reference_value], [Unit]) VALUES (@Test, @Investigation, @Result, @Indication, @Reference_value, @Unit)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [bloodtest]" UpdateCommand="UPDATE [bloodtest] SET [Test] = @Test, [Result] = @Result, [Indication] = @Indication, [Reference_value] = @Reference_value, [Unit] = @Unit WHERE [Investigation] = @original_Investigation AND (([Test] = @original_Test) OR ([Test] IS NULL AND @original_Test IS NULL)) AND (([Result] = @original_Result) OR ([Result] IS NULL AND @original_Result IS NULL)) AND (([Indication] = @original_Indication) OR ([Indication] IS NULL AND @original_Indication IS NULL)) AND (([Reference_value] = @original_Reference_value) OR ([Reference_value] IS NULL AND @original_Reference_value IS NULL)) AND (([Unit] = @original_Unit) OR ([Unit] IS NULL AND @original_Unit IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Investigation" Type="String" />
                <asp:Parameter Name="original_Test" Type="String" />
                <asp:Parameter Name="original_Result" Type="String" />
                <asp:Parameter Name="original_Indication" Type="String" />
                <asp:Parameter Name="original_Reference_value" Type="String" />
                <asp:Parameter Name="original_Unit" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Test" Type="String" />
                <asp:Parameter Name="Investigation" Type="String" />
                <asp:Parameter Name="Result" Type="String" />
                <asp:Parameter Name="Indication" Type="String" />
                <asp:Parameter Name="Reference_value" Type="String" />
                <asp:Parameter Name="Unit" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Test" Type="String" />
                <asp:Parameter Name="Result" Type="String" />
                <asp:Parameter Name="Indication" Type="String" />
                <asp:Parameter Name="Reference_value" Type="String" />
                <asp:Parameter Name="Unit" Type="String" />
                <asp:Parameter Name="original_Investigation" Type="String" />
                <asp:Parameter Name="original_Test" Type="String" />
                <asp:Parameter Name="original_Result" Type="String" />
                <asp:Parameter Name="original_Indication" Type="String" />
                <asp:Parameter Name="original_Reference_value" Type="String" />
                <asp:Parameter Name="original_Unit" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button9" CssClass="btn" runat="server" style="z-index: 1; left: 730px; top: 644px; position: absolute; width: 135px" Text="Back" OnClick="Button9_Click" />
        <asp:Button ID="Button4" CssClass="btn" runat="server" style="z-index: 1; left: 958px; top: 247px; position: absolute; width: 279px" Text="General" OnClick="Button4_Click" />
        <asp:Button ID="Button6" CssClass="btn" runat="server" OnClick="Button6_Click" style="z-index: 1; left: 579px; top: 646px; position: absolute; width: 140px;" Text="Save" />
        <asp:TextBox ID="TextBox9" runat="server" style="z-index: 1; left: 438px; top: 196px; position: absolute"></asp:TextBox>
    </form>
</body>
</html>
