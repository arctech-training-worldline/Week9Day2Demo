<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Week9Day2Demo.AddStudent" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Roll No</td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxRollNo"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxName"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxDateOfBirth" TextMode="Date"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Percentage</td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxPercentage"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" ID="ButtonSave" OnClick="ButtonSave_OnClick" Text="Insert Student" />
                        <asp:Button runat="server" ID="ButtonCancel" OnClick="ButtonCancel_OnClick" Text="Cancel" />
                    </td>
                </tr>
            </table>
            <div runat="server" id="divMessage" visible="False">
                <asp:Label runat="server">Student successfully Inserted!</asp:Label>
                <asp:HyperLink runat="server" NavigateUrl="Students.aspx">Click here to return to Students listing page</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
