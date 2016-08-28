using System;

namespace DbExampleApp1
{
    public partial class _default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text.ToString();
            Response.Redirect("results.aspx");
        }
    }
}