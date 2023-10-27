using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        // Sign Up Click Event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(CheckUserExists())
            {
                Response.Write("<script>alert('UserID already exists try something different');</script>");
            }
            else
            {
                SignUpNewUser();
            }
        }
        bool CheckUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from CustomerDetail where UserID ='"+TextBox5.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return false;
        }
        void Clearfn()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = string.Empty;
        }
        void SignUpNewUser()
        {
            // Response.Write("<script>alert('Successfully Register');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Insert into CustomerDetail(FullName, DOB, Email, PhoneNo, UserID, Password) values(@FullName, @DOB, @Email, @PhoneNo, @UserID, @Password)", con);
                cmd.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@UserID", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Registered');</script>");
                Clearfn();
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}