using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class Profile : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from CustomerDetail where UserID = '" + Session["UserID"] + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString(); 
                        TextBox4.Text = dr.GetValue(3).ToString(); 
                        TextBox5.Text = dr.GetValue(4).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentails');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}