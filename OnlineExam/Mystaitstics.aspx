<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mystaitstics.aspx.cs" Inherits="Mystaitstics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Width="1139px">
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" 
            SortExpression="UserName" />
        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
            SortExpression="SubjectName" />
        <asp:BoundField DataField="TestDate" HeaderText="TestDate" 
            SortExpression="TestDate" />
        <asp:BoundField DataField="NumberOfQuestions" HeaderText="NumberOfQuestions" 
            SortExpression="NumberOfQuestions" />
        <asp:BoundField DataField="Marks" HeaderText="Marks" 
            SortExpression="Marks" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:teststring %>"
    SelectCommand="SELECT [UserName], [SubjectName], [TestDate], [NumberOfQuestions], [Marks], [Status] FROM [tblResult] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

