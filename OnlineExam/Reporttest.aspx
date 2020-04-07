<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Reporttest.aspx.cs" Inherits="Reporttest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style15
        {
            width: 326px;
        }
        .style16
        {
            width: 152px;
        }
        .style19
        {
            width: 295px;
        }
        .style20
        {
            width: 332px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </p>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        Height="600px" Width="928px">
        <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
            <HeaderTemplate>
                All Result<br />
            </HeaderTemplate>
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ResultId" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="778px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ResultId" HeaderText="ResultId" ReadOnly="True" 
                            SortExpression="ResultId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                            SortExpression="SubjectName" />
                        <asp:BoundField DataField="TestDate" HeaderText="TestDate" 
                            SortExpression="TestDate" />
                        <asp:BoundField DataField="NumberOfQuestions" HeaderText="NumberOfQuestions" 
                            SortExpression="NumberOfQuestions" />
                        <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblResult]">
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>
                By User
            </HeaderTemplate>
            <ContentTemplate>
                <div>
                    <table class="style15">
                        <tr>
                            <td class="style20" >
                                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            </td>
                            <td class="style16">
                                <asp:ImageButton ID="imgSearch" runat="server" 
                                    ImageUrl="~/Images/search.png" OnClick="imgSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    &nbsp;<br />
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                    <br />
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
    <p>
        &nbsp;</p>

</asp:Content>

