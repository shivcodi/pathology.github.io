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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                num.Text = Session["rgno"].ToString();
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
                    name.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    age.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    gender.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    test.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    doc.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                    

                }
                prt.Text = Session["scan"].ToString();
                rmk.Text = Session["ct"].ToString();


                    
                c.Close();
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}