using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/*
 * In this example, we are exploring how to
 * dynamically add data from our database to
 * the gridView, present in the ASPX file DYNAMICALLY,
 * without using the data binding.
 * 
 * @author Aditya Krishnakumar
 * 
 * @date 28-08-16
 */
namespace DbExampleApp1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection();
            myConnection.ConnectionString = WebConfigurationManager.ConnectionStrings["student"].ConnectionString; // the connection string is present in web.config file.
            
            // Opening the connection
            myConnection.Open();

            // SQL Query...
            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConnection;
            myCommand.CommandText = "SELECT name,semester,marks FROM student_details ORDER BY name";

            // For filling the data dynamically in table
            DataTable table = new DataTable();

            // Firing the query & getting the results...
            using (SqlDataAdapter adapter = new SqlDataAdapter(myCommand))
                adapter.Fill(table);

            // Renaming columns. For good look
            table.Columns["name"].ColumnName = "Name";
            table.Columns["semester"].ColumnName = "Semester";
            table.Columns["marks"].ColumnName = "Marks";

            // Specifying data source for GridView
            GridView1.DataSource = table;

            // Binding the Data Now...
            GridView1.DataBind();

            // Closing the Connection
            myConnection.Close();
        }
    }
}