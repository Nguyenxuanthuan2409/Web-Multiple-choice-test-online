<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

        .style20
        {
            width: 802px;
        }
        .style21
        {
            width: 339px;
        }
        .style19
        {
            width: 400px;
        }
        .style15
        {
            width: 100%;
         height: 32px;
     }
        .style16
        {
            width: 69px;
        }
        .style17
        {
            width: 206px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="TimedPanel" runat="server" updatemode="Conditional">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" 
                    ontick="Timer1_Tick">
            </asp:Timer>
            <table class="style20">
                <tr>
                    <td align="left" class="style21">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblnoofquestions" runat="server"></asp:Label>
                    </td>
                    <td align="left" class="style19">
                        <asp:Label ID="clock" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="pnlQuest" runat="server" 
                Height="316px" style="margin-left: 40px;" Width="688px">
                <asp:Label ID="lblQuestion" runat="server" ForeColor="#0066FF"></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Option1" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox2" runat="server" />
                <asp:Label ID="Option2" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox3" runat="server" />
                <asp:Label ID="Option3" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox4" runat="server" />
                <asp:Label ID="Option4" runat="server" Text=""></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table class="style15">
                    <tr>
                        <td class="style16">
                            <asp:ImageButton ID="img_Next" runat="server" ImageUrl="~/Images/next.gif" 
                                OnClick="Button2_Click" Visible="false" />
                        </td>
                        <td class="style17">
                            <asp:ImageButton ID="img_Start" runat="server" ImageUrl="~/Images/start.gif" 
                                OnClick="img_Start_Click1" style="height: 19px" />
                        </td>
                        <%--Submit Nop--%>
                        <td class="style18">
                            <asp:ImageButton ID="img_submitnop" runat="server" ImageUrl="~/Images/submitnop.png" 
                                OnClick="Button3_Click" Visible="false"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td align="left" class="style17">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=DESKTOP-EH88R88;Initial Catalog=OnlineExam;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [tblQuestions]"></asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>

