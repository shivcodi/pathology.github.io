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
    public partial class bloodtest : System.Web.UI.Page
    {
        protected void FillData()
        {
            DataSet ds = new DataSet();
            string s = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            using (SqlConnection c = new SqlConnection(s))
            {
                c.Open();
                SqlCommand cmd = new SqlCommand("select * from bloodtest", c);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);

                     
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                TextBox2.Text = Session["rgno"].ToString();
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
                    TextBox1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                    TextBox9.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();

                }
                c.Close();

                GridView1.Visible = false;
                GridView1.DataBind();

            }
           

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ToString();
            SqlConnection c = new SqlConnection(a);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from bloodtest where Test='Test Details'";
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = cmd;
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView1.Visible = true;
            Button1.BackColor = System.Drawing.Color.Blue;
            Button3.BackColor = System.Drawing.Color.Gray;
            Button4.BackColor = System.Drawing.Color.Gray;
            Button2.BackColor = System.Drawing.Color.Gray;



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ToString();
            SqlConnection c = new SqlConnection(a);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from bloodtest where Test='DLC'";
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = cmd;
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView1.Visible = true;
           
            Button2.BackColor = System.Drawing.Color.Blue;
            Button3.BackColor = System.Drawing.Color.Gray;
            Button4.BackColor = System.Drawing.Color.Gray;
            Button1.BackColor = System.Drawing.Color.Gray;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ToString();
            SqlConnection c = new SqlConnection(a);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from bloodtest where Test='RBC Morphology'";
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = cmd;
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
           
            GridView1.Visible = true;
            Button2.BackColor = System.Drawing.Color.Gray;
            Button3.BackColor = System.Drawing.Color.Blue;
            Button4.BackColor = System.Drawing.Color.Gray;
            Button1.BackColor = System.Drawing.Color.Gray;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string a = ConfigurationManager.ConnectionStrings["ABC"].ToString();
            SqlConnection c = new SqlConnection(a);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = c;
            cmd.CommandText = "select * from bloodtest where Test='General'";
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = cmd;
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView1.Visible = true;
            Button2.BackColor = System.Drawing.Color.Gray;
            Button3.BackColor = System.Drawing.Color.Gray;
            Button4.BackColor = System.Drawing.Color.Blue;
            Button1.BackColor = System.Drawing.Color.Gray;
        }


       
                    
                       








        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("Chk");
        }

      

        protected void Gridview_delete(object sender, GridViewDeleteEventArgs e)
        {
            Label l = GridView1.Rows[e.RowIndex].FindControl("Lblinvestigation") as Label;
            string s = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            using (SqlConnection c = new SqlConnection(s))
            {
                c.Open();
                SqlCommand cmd = new SqlCommand("delete from bloodtest where Investigation='" + l.Text + "'", c);
                cmd.ExecuteNonQuery();
                GridView1.EditIndex = -1;
                FillData();
            }
        }

        
       

        protected void Gridview_update(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label t1 = (Label)row.FindControl("Label3");
            TextBox t2 = (TextBox)row.FindControl("TextBox4");
            TextBox t3 = (TextBox)row.FindControl("TextBox5");
            TextBox t4 = (TextBox)row.FindControl("TextBox6");
            TextBox t5 = (TextBox)row.FindControl("TextBox7");
            SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["ABC"].ToString());
            c.Open();
            string query = "update bloodtest set Result='" + t2.Text + "',Indication='" + t3.Text + "',Reference_value='" + t4.Text + "',Unit='" + t5.Text + "' where Investigation='" + t1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, c);
            cmd.ExecuteNonQuery();
            c.Close();
            GridView1.EditIndex = -1;
            FillData();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.FooterRow;
            TextBox t1 = (TextBox)row.FindControl("tsttxt");
            TextBox t2 = (TextBox)row.FindControl("invttxt");
            TextBox t3 = (TextBox)row.FindControl("rsttxt");
            TextBox t4 = (TextBox)row.FindControl("indtxt");
            TextBox t5 = (TextBox)row.FindControl("rfrvtxt");
            TextBox t6 = (TextBox)row.FindControl("utxt");
            string a = ConfigurationManager.ConnectionStrings["ABC"].ToString();

            using (SqlConnection c = new SqlConnection(a))
            {
                string query = "insert into bloodtest(Test,Investigation,Result,Indication,Reference_value,Unit) values(@Test,@Investigation,@Result,@Indication,@Reference_value,@Unit)";

                using (SqlCommand cmd = new SqlCommand(query, c))
                {
                    cmd.Parameters.AddWithValue("@Test", t1.Text);
                    cmd.Parameters.AddWithValue("@Investigation", t2.Text);
                    cmd.Parameters.AddWithValue("@Result", t3.Text);
                    cmd.Parameters.AddWithValue("@Indication", t4.Text);
                    cmd.Parameters.AddWithValue("@Reference_value", t5.Text);
                    cmd.Parameters.AddWithValue("@Unit", t6.Text);
                    try
                    {
                        c.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        if (ex.Number == 2627) 
                        {
                            Console.WriteLine("A record with this primary key already exists.");
                        }
                        else
                        {
                            Console.WriteLine("An error occurred: " + ex.Message);
                        }
                    }
                }
            }
            FillData();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillData();

        }

       

        protected void Gridview_Delete(object sender, GridViewDeleteEventArgs e)
        {
            Label l = GridView1.Rows[e.RowIndex].FindControl("Lblinvestigation") as Label;
            string s = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            using (SqlConnection c = new SqlConnection(s))
            {
                c.Open();
                SqlCommand cmd = new SqlCommand("delete from bloodtest where Investigation='" + l.Text + "'", c);
                cmd.ExecuteNonQuery();
                GridView1.EditIndex = -1;
                FillData();
            }

        }

        protected void Gridview_Update(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                
                Label t1 = (Label)row.FindControl("Lblinvestigation");
                TextBox t2 = (TextBox)row.FindControl("TextBox4");
                TextBox t3 = (TextBox)row.FindControl("TextBox5");
                TextBox t4 = (TextBox)row.FindControl("TextBox6");
                TextBox t5 = (TextBox)row.FindControl("TextBox7");
                SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["ABC"].ToString());
                c.Open();
                string query = "update bloodtest set Result='" + t2.Text + "',Indication='" + t3.Text + "',Reference_value='" + t4.Text + "',Unit='" + t5.Text + "' where Investigation='" + t1.Text + "'";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.ExecuteNonQuery();
                c.Close();
                GridView1.EditIndex = -1;
                FillData();
            }
            catch(Exception ex)
            {
               Response.Write("<script>alert('" + ex.Message.Replace("'", "") + "')</script>");
            } 
         


        }

        protected void GridView_Rowedit(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillData();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string STRCON = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection CONN = new SqlConnection(STRCON);
            CONN.Open();

            SqlCommand CD = new SqlCommand("Select * from details Where registration_no = @registration_no", CONN);
            Button6.BackColor = System.Drawing.Color.DodgerBlue;
            
            GridView1.Visible = true;

            Session["rgno"] = TextBox2.Text;
            
            Response.Redirect("Report.aspx");

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Gridview1_Rowcommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("Insert"))
            {
                string s = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
                SqlConnection c = new SqlConnection(s);
                try
                {
                    c.Open();
                    foreach(GridViewRow row in GridView1.Rows)
                    {
                        CheckBox cb = row.FindControl("Chk") as CheckBox;
                        if(cb.Checked)
                        {
                            var t = row.FindControl("Label2") as Label;
                            var i = row.FindControl("Lblinvestigation") as Label;
                            var r = row.FindControl("Label4") as Label;
                            var ind = row.FindControl("Label5") as Label;
                            var rv = row.FindControl("Label6") as Label;
                            var u = row.FindControl("Label7") as Label;
                            string query = "insert into Report(Test,Investigation,Result,Indication,Reference_value,Unit) values(@Test,@Investigation,@Result,@Indication,@Reference_value,@Unit)";
                            using (SqlCommand cmd = new SqlCommand(query, c))
                            {
                                cmd.Parameters.AddWithValue("@Test", t.Text.Trim());
                                cmd.Parameters.AddWithValue("@Investigation", i.Text.Trim());
                                cmd.Parameters.AddWithValue("@Result", r.Text.Trim());
                                cmd.Parameters.AddWithValue("@Indication", ind.Text.Trim());
                                cmd.Parameters.AddWithValue("@Reference_value", rv.Text.Trim());
                                cmd.Parameters.AddWithValue("@Unit", u.Text.Trim());


                                cmd.ExecuteNonQuery();

                                    
                            }








                        }
                        
                    }
                }
                catch(Exception ex)

                {
                    Response.Write("<script>alert('" + ex.Message.Replace("'", "") + "')</script>");

                }

            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}
