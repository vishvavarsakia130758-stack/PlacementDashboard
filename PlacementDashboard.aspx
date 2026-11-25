
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="PlacementDashboard.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Dashboard</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f4f7;
            margin: 0;
            padding: 25px;
        }

        h1 {
            text-align: center;
            color: #243b64;
        }

        .summary {
            display: flex;
            gap: 20px;
            margin: 25px 0;
        }

        .card {
            background-color: white;
            padding: 20px;
            flex: 1;
            text-align: center;
            border-radius: 8px;
        }

        .number {
            font-size: 28px;
            color: #243b64;
            font-weight: bold;
        }

        .table {
            width: 100%;
            background-color: white;
            border-collapse: collapse;
        }

        .table th {
            background-color: #243b64;
            color: white;
            padding: 12px;
        }

        .table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <h1>Placement Dashboard</h1>

        <div class="summary">
            <div class="card">
                <h3>Total Placements</h3>
                <asp:Label ID="lblTotal" runat="server"
                    CssClass="number" Text="0" />
            </div>

            <div class="card">
                <h3>Students Placed</h3>
                <asp:Label ID="lblPlaced" runat="server"
                    CssClass="number" Text="0" />
            </div>

            <div class="card">
                <h3>Pending Placements</h3>
                <asp:Label ID="lblUnplaced" runat="server"
                    CssClass="number" Text="0" />
            </div>
        </div>

        <h2>Placement Records</h2>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="true"
            CssClass="table"
            EmptyDataText="No placement records found.">
        </asp:GridView>

    </form>
</body>
</html>



