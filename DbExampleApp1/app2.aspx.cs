using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace DbExampleApp1
{
    public partial class app2 : System.Web.UI.Page
    {
        SqlConnection conn2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn2 = new SqlConnection();
                conn2.ConnectionString = WebConfigurationManager.ConnectionStrings["student"].ConnectionString;
                conn2.Open();
                SqlCommand com2 = new SqlCommand();
                com2.Connection = conn2;
                com2.CommandText = "SELECT dep_name FROM faculties";
                SqlDataReader rdr = com2.ExecuteReader();
                while (rdr.Read())
                {
                    DropDownList1.Items.Add(rdr["dep_name"].ToString());
                }
                conn2.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn2 = new SqlConnection();
            conn2.ConnectionString = WebConfigurationManager.ConnectionStrings["student"].ConnectionString;
            conn2.Open();

            SqlCommand com3 = new SqlCommand();
            com3.Connection = conn2;
            com3.CommandText = "SELECT no_of_faculties FROM faculties WHERE dep_name = '" + DropDownList1.SelectedItem.Text + "'";
            SqlDataReader rdr2 = com3.ExecuteReader();
            rdr2.Read();
            Label1.Text = rdr2["no_of_faculties"].ToString();

            conn2.Close();
        }
    }
}