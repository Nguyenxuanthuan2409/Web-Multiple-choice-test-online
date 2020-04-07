<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
        .style19
        {
            width: 6px;
        }
        .style20
        {
            width: 793px;
        }
        .style21
        {
            width: 569px;
        }
        .style26
        {
            width: 141px;
        }
        .style27
        {
            width: 125px;
        }
        .style37
        {
            width: 95px;
        }
        .style38
        {
            width: 126px;
        }
        .style39
        {
            width: 1px;
        }
        .style40
        {
            width: 345px;
        }
        .style41
        {
            width: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style12">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20" colspan="4" align="center">
            
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style21" colspan="2">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style40">
            
                <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                    Height="207px" Width="482px">
                    <asp:TabPanel runat="server" HeaderText="Add Subject" ID="TabPanel1">
                        <HeaderTemplate>
                            Add Subject
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnlAdd" runat="server" Height="139px" Width="322px">
                                <table class="style12" style="width: 99%; height: 141px;">
                                    <tr>
                                        <td class="style18" rowspan="5">
                                            &nbsp;</td>
                                        <td rowspan="5">
                                            &nbsp;</td>
                                        <td class="style27">
                                            &nbsp;</td>
                                        <td class="style26">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27">
                                            <asp:Label ID="Label1" runat="server" Text="Subject ID"></asp:Label>
                                        </td>
                                        <td class="style26">
                                            <asp:TextBox ID="txtID" runat="server" Enabled="False"></asp:TextBox>
                                        </td>
                                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
                                            Enabled="True" TargetControlID="txtSubject" WatermarkText="Enter Subject">
                                        </asp:TextBoxWatermarkExtender>
                                    </tr>
                                    <tr>
                                        <td class="style27">
                                            <asp:Label ID="Label2" runat="server" Text="Enter Subject Name"></asp:Label>
                                        </td>
                                        <td class="style26">
                                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtSubject" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27">
                                            &nbsp;</td>
                                        <td class="style26">
                                            <asp:ImageButton ID="btnAddsubject" runat="server" ImageUrl="~/Images/Add.png" 
                                                OnClick="btnAddsubject_Click" CausesValidation="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27">
                                            &nbsp;</td>
                                        <td class="style26">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Delete Subject">
                        <HeaderTemplate>
                            Delete Subject
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnlDelete" runat="server" Height="142px" Width="286px">
                                <table class="style12" style="width: 101%; height: 140px">
                                    <tr>
                                        <td class="style39">
                                            &nbsp;</td>
                                        <td class="style37">
                                            &nbsp;</td>
                                        <td class="style38">
                                            &nbsp;</td>
                                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                                            Enabled="True" TargetControlID="txtDelete" WatermarkText="Enter Subject">
                                        </asp:TextBoxWatermarkExtender>
                                    </tr>
                                    <tr>
                                        <td class="style39" rowspan="2">
                                            &nbsp;</td>
                                        <td class="style37">
                                            <asp:Label ID="lblSubjectName" runat="server" Text="Subject Name"></asp:Label>
                                        </td>
                                        <td class="style38">
                                            <asp:TextBox ID="txtDelete" runat="server"></asp:TextBox>
                                           
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtDelete" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style37">
                                            &nbsp;</td>
                                        <td class="style38">
                                            <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/Delete1.png" 
                                                onclick="btnDelete_Click" CausesValidation="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:TabPanel>
                </asp:TabContainer>
            </td>
            <td class="style20" colspan="2">
                                &nbsp;</td>
            <td class="style20">
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                                    Width="76px" Height="206px" PageSize="5">
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <Columns>
                                        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                                            SortExpression="SubjectName" />
                                    </Columns>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style21" colspan="2">
                &nbsp;</td>
            <td class="style20" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20" colspan="4" align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [SubjectName] FROM [tblSubject]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

