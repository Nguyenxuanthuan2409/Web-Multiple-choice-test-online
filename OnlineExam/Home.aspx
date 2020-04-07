<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Debug="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style11
        {
        }
        .style14
        {
            height: 5px;
            width: 201px;
        }
        .style15
        {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style = "background-position: right; background-image : url('Images/loginimg.jpg'); background-repeat :no-repeat">
    
  
        <br />
        <br />
          <br />
        <table class="style10" align="left" style="width: 419px; height: 142px">
            <tr>
                <td class="style11" align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    <asp:Label ID="Label3" runat="server" Font-Size="19px" ForeColor="#2A76A8" 
                        Text="Account Login"></asp:Label>
                </td>
                <td class="style14" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">

                    &nbsp;</td>
                <td class="style11">

                    &nbsp;</td>
                <td class="style19" colspan="2">

                    &nbsp;</td>
                <td class="style18">

                    &nbsp;</td>
                <td class="style15">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11" align="right">

                    &nbsp;</td>
                <td class="style11" align="right">

                    <asp:Label ID="Label1" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="User Name "></asp:Label>
                </td>
                <td class="style19" colspan="2">

                    &nbsp;</td>
                <td class="style18">

                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
                <td class="style15">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Enter UserName" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">

                    &nbsp;</td>
                <td class="style11" align="right">

                    <asp:Label ID="Label2" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="Password "></asp:Label>
                </td>
                <td class="style19" colspan="2">

                    &nbsp;</td>
                <td class="style18">

                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style15">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter Password" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="left" colspan="2" nowrap="nowrap">

                    <asp:LinkButton ID="lnkForgot" CssClass="textdecor" runat="server" 
                        onclick="lnkForgot_Click" ForeColor="#2A75A8" CausesValidation="False">Forgot Password</asp:LinkButton>

                </td>
                <td class="style20" align="left" colspan="2">

                    <asp:ImageButton ID="btnSignin" runat="server" 
                        ImageUrl="~/Images/submit.png" OnClick="btnSign_Click" Height="20px" />
                </td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    <asp:Label ID="lblComments" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" align="center">

                    &nbsp;</td>
                <td class="style20" align="center" colspan="4">

                    &nbsp;</td>
                <td class="style15" align="center">

                    &nbsp;</td>
            </tr>
            </table>
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


