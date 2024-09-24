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
    public partial class patnrgst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                
                    
                

                Rgno.Text = Session["rgno"].ToString();
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
                    tstdt.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    doc.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();

                }
                c.Close();
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection c = new SqlConnection(a);
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from details where registration_no='" + Rgno.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["rgno"] = Rgno.Text;
                Response.Redirect("bloodtest.aspx");

            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection c = new SqlConnection(a);
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from details where registration_no='" + Rgno.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["rgno"] = Rgno.Text;
                Response.Redirect("biochemistrytest.aspx");

            }

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection c = new SqlConnection(a);
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from details where registration_no='" + Rgno.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["rgno"] = Rgno.Text;
                Response.Redirect("Ctscan.aspx");

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection c = new SqlConnection(a);
            c.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from details where registration_no='" + Rgno.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["rgno"] = Rgno.Text;
                Response.Redirect("mri.aspx");

            }

        }
    }
}