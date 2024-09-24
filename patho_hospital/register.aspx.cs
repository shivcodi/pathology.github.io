using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace patho_hospital
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

           
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection c = new SqlConnection(a);
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from details where registration_no='" + TextBox1.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["rgno"] = TextBox1.Text;
                Response.Redirect("patnrgst.aspx");
               

            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "INVALID REGISTRATION NO.!!";

               
            }

            

        }
    }
}