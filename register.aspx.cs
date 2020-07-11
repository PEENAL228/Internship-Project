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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["client"].ConnectionString.ToString());
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String s1 = "Insert into client values(@p1,@p2,@p3,@p4,@p5)";
            SqlCommand cmd = new SqlCommand(s1, con);
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox4.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox5.Text);
            cmd.Parameters.AddWithValue("@p5", TextBox6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}