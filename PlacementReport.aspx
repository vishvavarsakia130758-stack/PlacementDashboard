
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="PlacementReport.aspx.cs"
    Inherits="PlacementDashboard.PlacementReport" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Placement Report</h2>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="true"
            EmptyDataText="No placement records found.">
        </asp:GridView>
    </form>
</body>
</html>


