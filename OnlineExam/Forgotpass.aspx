<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="Forgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <style type="text/css">
        .style17
        {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="ForgetDiv">
                            <table>
                                <tr>
                                    <th>
                                    </th>
                                    <th colspan="3">
                                        Forgot Password
                                    </th>
                                    <th class="style17">
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td class="style17">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="User Name"></asp:Label>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtForgetUser" runat="server" OnTextChanged="TextBox1_TextChanged"
                                            AutoPostBack="True" Width="175px" EnableViewState="False"></asp:TextBox>
                                    </td>
                                    <td class="style17">
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="txtForgetUser" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lblusername" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server">Question1</asp:Label>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSecurityQus" runat="server" Enabled="False" Width="175px"></asp:TextBox>
                                    </td>
                                    <td class="style17">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Answer"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSecurityAns" runat="server" Width="175px" 
                                            ontextchanged="txtSecurityAns_TextChanged" AutoPostBack="True"></asp:TextBox>
                                    </td>

                                    <td class="style17">
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                            ControlToValidate="txtSecurityAns" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblwrongans" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="New Password"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtNewpassword" runat="server" Width="175px" Enabled="false" 
                                            MaxLength="9" TextMode="Password"></asp:TextBox>
                                    </td>

                                    <td class="style17">
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                            ControlToValidate="txtNewpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtConfirmpassword" runat="server" Width="175px" 
                                            Enabled="false" TextMode="Password"></asp:TextBox>
                                    </td>

                                    <td class="style17">
                                        &nbsp;
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToCompare="txtNewpassword" ControlToValidate="txtConfirmpassword" 
                                            ErrorMessage="Password not match" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td align="center" colspan="3">
                                        <asp:ImageButton ID="imgChangePass" runat="server" 
                                           OnClick="imgChangePass_Click" ImageUrl="~/Images/change_password.png" />
                                    </td>
                                    <td class="style17">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="lblForgetMessage" runat="server" ForeColor="#2A75A8"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
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
</asp:Content>

