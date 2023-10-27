using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class Bookings : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private void Bind(SqlCommand cmd)
        {
            SqlDataReader reader1 = cmd.ExecuteReader();
            MovieRepeater.DataSource = reader1;
            MovieRepeater.DataBind();
            reader1.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["UserID"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT T.BookingAmount, T.BookingID, T.MovieID, T.Quantity, M.MovieName, M.MovieImageFilePath FROM TicketBookings T INNER JOIN RunningMovies M ON T.MovieID = M.MovieID WHERE T.UserID = '" + Session["UserID"].ToString() + "'", con);
                Bind(cmd1);
                con.Close();
            }
        }
        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            int Accquantity = 0, Gquantity = 0;
            RepeaterItem Itm = (sender as Button).Parent as RepeaterItem;
            HiddenField Id = ((HiddenField)Itm.FindControl("MovieIDHiddenField")) as HiddenField;
            Label LId = ((Label)Itm.FindControl("QuanID")) as Label;
            Label amt = ((Label)Itm.FindControl("Price")) as Label;
            TextBox Tb = ((TextBox)Itm.FindControl("CancelQuantityTextBox")) as TextBox;
            SqlConnection con = new SqlConnection(strcon);
            Accquantity = int.Parse(LId.Text);
            Gquantity = string.IsNullOrEmpty(Tb.Text) ? 1 : int.Parse(Tb.Text);
            if(Accquantity - Gquantity <= 0)
            {
                SqlCommand cmd2 = new SqlCommand("Delete from TicketBookings where BookingID = @BookingID and UserID = @UserID", con);
                cmd2.Parameters.AddWithValue("@BookingID", Id.Value);
                cmd2.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                con.Open();
                cmd2.ExecuteNonQuery();

                SqlCommand cmd4 = new SqlCommand("Update from RunningMovies set MovieAvailTicket = MovieAvailTicket + @Quantity, MovieCollection = MovieCollection - (@Quantity * MoviePrice)  where MovieID = @MovieID", con);
                cmd4.Parameters.AddWithValue("@Quantity", LId.Text);
                cmd4.Parameters.AddWithValue("@MovieID", Id.Value);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("Update TicketBookings set Quantity = Quantity - @Quantity, BookingAmount = BookingAmount - (@Quantity * @Amt) where BookingID = @BookingID and UserID = @UserID", con);
                cmd2.Parameters.AddWithValue("@BookingID", Id.Value);
                cmd2.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                cmd2.Parameters.AddWithValue("@Quantity", Gquantity);
                cmd2.Parameters.AddWithValue("@Amt", int.Parse(amt.Text));
                con.Open();
                cmd2.ExecuteNonQuery();

                SqlCommand cmd4 = new SqlCommand("Update from RunningMovies set MovieAvailTicket = MovieAvailTicket + @Quantity, MovieCollection = MovieCollection - (@Quantity * MoviePrice) where MovieID = @MovieID", con);
                cmd4.Parameters.AddWithValue("@Quantity", Gquantity);
                cmd4.Parameters.AddWithValue("@MovieID", Id.Value);
                cmd2.ExecuteNonQuery();
            }
            SqlCommand cmd3 = new SqlCommand("SELECT T.BookingAmount, T.BookingID, T.MovieID, T.Quantity, M.MovieName, M.MovieImageFilePath FROM TicketBookings T INNER JOIN RunningMovies M ON T.MovieID = M.MovieID WHERE T.UserID = '" + Session["UserID"].ToString() + "'", con);
            Bind(cmd3);
            con.Close();
        }
    }
} 