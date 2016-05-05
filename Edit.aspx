<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 62px;
            width: 311px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                <asp:BoundField DataField="profile" HeaderText="profile" SortExpression="profile" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [donors] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [donors] ([name], [photo], [profile]) VALUES (@name, @photo, @profile)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [donors]" UpdateCommand="UPDATE [donors] SET [name] = @name, [photo] = @photo, [profile] = @profile WHERE [Id] = @original_Id">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_photo" Type="String" />
                <asp:Parameter Name="original_profile" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="profile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="profile" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_photo" Type="String" />
                <asp:Parameter Name="original_profile" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <div>
        <p>
            <asp:Label ID="LName" runat="server" Text="Name"></asp:Label>
            :
            <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LPhoto" runat="server" Text="Photo"></asp:Label>
            :
            <asp:FileUpload ID="ImageUpload" runat="server" Height="33px" Width="320px" />
        <p>
            <asp:Label ID="LProfile" runat="server" Text="Profile"></asp:Label>
            :
            <asp:TextBox ID="txtProfile" runat="server" Width="200px" Height="70px" TextMode="multiLine"></asp:TextBox>
        </p>
            <p>
                <asp:Button ID="SubButton" runat="server" Text="Submit" OnClick="SubButton_Click" />
            </p>
        </div>
    </form>
</body>
</html>
