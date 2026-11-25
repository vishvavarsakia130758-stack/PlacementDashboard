
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PlacementDashboard
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["PlacementDB"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboard();
            }
        }

        void LoadDashboard()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Placements";

                SqlDataAdapter da =
                    new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                lblTotal.Text = dt.Rows.Count.ToString();

                int placed = 0;
                int pending = 0;

                foreach (DataRow row in dt.Rows)
                {
                    string status = row["Status"].ToString();

                    if (status.Equals("Placed",
                        StringComparison.OrdinalIgnoreCase))
                    {
                        placed++;
                    }
                    else
                    {
                        pending++;
                    }
                }

                lblPlaced.Text = placed.ToString();
                
            }
        }
    }
}


