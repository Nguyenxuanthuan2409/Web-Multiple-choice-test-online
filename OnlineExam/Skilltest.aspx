<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Skilltest.aspx.cs" Inherits="Skilltest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="SubjectName"
                        Width="189px"
                        onselectedindexchanged="DataList1_SelectedIndexChanged" 
                         BorderColor="#3399FF" CellPadding="5" CellSpacing="3" GridLines="Both" 
                         Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                         Font-Strikeout="False" Font-Underline="False">
        <AlternatingItemStyle BackColor="#CCCCCC" Font-Bold="False" Font-Italic="False" 
                             Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="White" />
        <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                             Font-Size="Large" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="#999999" HorizontalAlign="Left" />
        <HeaderTemplate>
                             Subject Name
                         </HeaderTemplate>
        <ItemStyle BackColor="Gray" Font-Bold="False" Font-Italic="False" 
                             Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            <div style="text-decoration:none">
                <asp:LinkButton ID="CategoryNameLabel" runat="server" CommandName="select" CssClass="textdecor" 
                                Text='<%# Eval("SubjectName") %>'  />
            </div>
        </ItemTemplate>
        <SelectedItemStyle Font-Bold="True" BackColor="#39759B" Font-Italic="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="White" />
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                             Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True" 
                        ProviderName="System.Data.SqlClient" 
                        SelectCommand="SELECT [SubjectName] FROM [tblSubject]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>
</asp:Content>

