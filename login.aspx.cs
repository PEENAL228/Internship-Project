using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace water_project_final
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["client"].ConnectionString.ToString());
            con.Open();
            string s = "select * from owner where email=@p1 and password=@p2 ";

            SqlCommand cmd = new SqlCommand(s, con);

            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);

            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Label2.Text = "Login Done.... ";
                Session["Mno"] = TextBox1.Text;
                TextBox1.Text = "";
                Response.Redirect("/AdminLTE-3.0.4/index.html/");
            }

            else
            {
                TextBox1.Text = "";
                Label2.Text = "Invalild Mobile No Or Password.. ";
            }
        }
    }
}