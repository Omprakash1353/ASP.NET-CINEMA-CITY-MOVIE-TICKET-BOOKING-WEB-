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
    public partial class MovieDetails : System.Web.UI.Page
    {
        string movieid;
        int price;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["UserID"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            string MovieID = Request.QueryString["MovieID"];
            movieid = MovieID;
            if (!IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from [MovieTicketDB].[dbo].[RunningMovies] where MovieID = '" + MovieID + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Image1.ImageUrl = reader["MovieImageFilePath"].ToString();
                    Label2.Text = reader["MovieDescription"].ToString();
                    Label1.Text = reader["MovieName"].ToString();
                    Label3.Text = reader["MoviePrice"].ToString();
                    price = int.Parse(Label3.Text);
                }
                con.Close();
            }
            TextBox1.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string movieID = movieid; 
            
            int tkt  = string.IsNullOrEmpty(TextBox1.Text.Trim()) ? 1 : Convert.ToInt16(TextBox1.Text.Trim());
            price = int.Parse(Label3.Text.Trim());
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();

                using (SqlCommand cmd1 = new SqlCommand("Select * from [MovieTicketDB].[dbo].[TicketBookings] where UserID = @UserID and MovieID = @MovieID", con))
                {
                    cmd1.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                    cmd1.Parameters.AddWithValue("@MovieID", movieID);
                    cmd1.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count <= 0)
                    {
                        using (SqlCommand cmd2 = new SqlCommand("INSERT INTO [MovieTicketDB].[dbo].[TicketBookings] (UserID, MovieID, Quantity, BookingDate, BookingAmount) VALUES (@UserID, @MovieID, @Quantity, @BookingDate, @BookingAmount)", con))
                        {
                            cmd2.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                            cmd2.Parameters.AddWithValue("@MovieID", movieID);
                            cmd2.Parameters.AddWithValue("@Quantity", tkt);
                            cmd2.Parameters.AddWithValue("@BookingDate", DateTime.Now);
                            cmd2.Parameters.AddWithValue("@BookingAmount", price * tkt);
                            cmd2.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        using (SqlCommand cmd2 = new SqlCommand("UPDATE [MovieTicketDB].[dbo].[TicketBookings] SET Quantity = Quantity + @Quantity, BookingAmount = BookingAmount + @BookingAmount WHERE UserID = @UserID AND MovieID = @MovieID", con))
                        {
                            cmd2.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                            cmd2.Parameters.AddWithValue("@MovieID", movieID);
                            cmd2.Parameters.AddWithValue("@Quantity", tkt);
                            cmd2.Parameters.AddWithValue("@BookingAmount", price * tkt);
                            cmd2.ExecuteNonQuery();
                        }
                    }
                }

                using (SqlCommand cmd2 = new SqlCommand("UPDATE RunningMovies SET MovieAvailTicket = MovieAvailTicket - @Quantity WHERE MovieID = @MovieID", con))
                {
                    cmd2.Parameters.AddWithValue("@MovieID", movieID);
                    cmd2.Parameters.AddWithValue("@Quantity", tkt);

                    cmd2.ExecuteNonQuery();
                }
            }
            TextBox1.Text = "";
            Response.Redirect("PaymentPage.aspx");
        }

    }
}