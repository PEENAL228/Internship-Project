using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace water_project_final
{
    public partial class order_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["client"].ConnectionString.ToString());
            con.Open();
            String s1 = "Insert Into orderfinal values(@p1,@p2,@p3,@p4)";
            SqlCommand cmd = new SqlCommand(s1, con);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox5.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}