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
    public partial class client_login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["client"].ConnectionString.ToString());
            con.Open();
            string s = "select * from client where c_email=@p1 and c_password=@p2 ";

            SqlCommand cmd = new SqlCommand(s, con);

            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);

            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Login Done.... ";
                Session["Mno"] = TextBox1.Text;
                TextBox1.Text = "";
                Response.Redirect("order_page.aspx");
            }

            else
            {
                TextBox1.Text = "";
                Label1.Text = "Invalild Mobile No Or Password.. ";
            }
        }
    }
}