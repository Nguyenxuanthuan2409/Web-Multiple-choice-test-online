<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TestSettings.aspx.cs" Inherits="TestSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style19
        {
            width: 526px;
        }
        .style20
        {
            width: 204px;
        }
        .style21
        {
            width: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
    <table class="style12">
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                <asp:Label ID="lblDuration" runat="server" Text="Test Duration"></asp:Label>
            </td>
            <td class="style20">
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtTime" ErrorMessage="Enter Minutes in Numbers" 
                    Type="Integer" MaximumValue="180" MinimumValue="2" ForeColor="Red"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                <asp:Label ID="lblQuestions" runat="server" Text="No.Of.Questions"></asp:Label>
            </td>
            <td class="style20">
                <asp:TextBox ID="txtQuestions" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtQuestions" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtQuestions" ErrorMessage="Enter No.Of.Questions" 
                    Type="Integer" MaximumValue="100" MinimumValue="1" ForeColor="Red"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style20">
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/Images/confirm.png"  onclick="btnTest_Click"  />
            </td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
<br />
<br /><br />
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
</asp:Content>

