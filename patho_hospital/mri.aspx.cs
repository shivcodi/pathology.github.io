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
    public partial class mri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                TextBox1.Text = Session["rgno"].ToString();
                String s = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
                SqlConnection c = new SqlConnection(s);
                c.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = c;
                cmd.CommandText = "select * from details where registration_no='" + Session["rgno"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();

                }
                c.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["rgno"] = TextBox1.Text;
            Session["scan"] = DropDownList1.Text;
            Session["ct"] = TextBox7.Text;
            Response.Redirect("mrireport.aspx");

        }
    }
}