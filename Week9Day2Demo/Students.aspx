<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Week9Day2Demo.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student List</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="RollNo"
                DataSourceID="ObjectDataSourceStudents" Width="650px"
                AllowPaging="True" PageSize="3">
                <Columns>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>

            <asp:ObjectDataSource ID="ObjectDataSourceStudents" runat="server"
                TypeName="Week9Day2Demo.Services.StudentsService" DataObjectTypeName="Week9Day2Demo.Services.Student" 
                SelectMethod="GetAllStudents" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
