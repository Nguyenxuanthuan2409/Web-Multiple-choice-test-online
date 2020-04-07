<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Deletequestion.aspx.cs" Inherits="Deletequestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style19
        {
            width: 7px;
        }
        .style20
        {
            width: 405px;
        }
        .style22
        {
            width: 334px;
        }
        .style23
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style12" style="height: 27px; width: 52%">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="lblDelete" runat="server" Text="Enter Serial to delete"></asp:Label>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style23">
                <asp:TextBox ID="txtSno" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtSno" ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style23">
                <asp:ImageButton ID="btnDelete" runat="server" onclick="btnDelete_Click"
                    ImageUrl="~/Images/Delete1.png" />
            </td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SerialNumber" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        Width="842px" ClientIDMode="Static" PageSize="5">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" 
                ReadOnly="True" SortExpression="SerialNumber" />
            <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                SortExpression="SubjectName" />
            <asp:BoundField DataField="Question" HeaderText="Question" 
                SortExpression="Question" />
            <asp:BoundField DataField="Option1" HeaderText="Option1" 
                SortExpression="Option1" />
            <asp:BoundField DataField="Option2" HeaderText="Option2" 
                SortExpression="Option2" />
            <asp:BoundField DataField="Option3" HeaderText="Option3" 
                SortExpression="Option3" />
            <asp:BoundField DataField="Option4" HeaderText="Option4" 
                SortExpression="Option4" />
            <asp:BoundField DataField="Answer" HeaderText="Answer" 
                SortExpression="Answer" />
            <asp:BoundField DataField="ChoiceType" HeaderText="ChoiceType" 
                SortExpression="ChoiceType" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True" 
    ProviderName="System.Data.SqlClient" 
    SelectCommand="SELECT * FROM [tblQuestions]"></asp:SqlDataSource>
</asp:Content>

