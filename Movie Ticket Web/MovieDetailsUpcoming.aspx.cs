using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class MovieDetailsUpcoming : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string MovieID = Request.QueryString["MovieID"];
            if (!IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from [MovieTicketDB].[dbo].[UpcomingMovies] where MovieID = '" + MovieID + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Image1.ImageUrl = reader["MovieImageFilePath"].ToString();
                    Label2.Text = reader["MovieDescription"].ToString();
                    Label1.Text = reader["MovieName"].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("homepage.aspx");
        }
    }
}