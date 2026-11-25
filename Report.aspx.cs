
using System;

namespace PlacementDashboard
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("PlacementDashboard.aspx");
        }
    }
}

