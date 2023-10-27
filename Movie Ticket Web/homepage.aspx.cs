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
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);

                string query1 = string.Format("SELECT [MovieImageFilePath], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies] where MovieStatus='Trending'");
                SqlCommand cmd1 = new SqlCommand(query1, con);

                con.Open();

                SqlDataReader reader1 = cmd1.ExecuteReader();
                Repeater1.DataSource = reader1;
                Repeater1.DataBind();

                reader1.Close();
                con.Close();

            }
            if (!IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);

                string query2 = string.Format("SELECT [MovieImageFilePath], [MovieID] FROM [MovieTicketDB].[dbo].[UpcomingMovies]");
                SqlCommand cmd2 = new SqlCommand(query2, con);

                con.Open();

                SqlDataReader reader2 = cmd2.ExecuteReader();
                Repeater2.DataSource = reader2;
                Repeater2.DataBind();

                reader2.Close();
                con.Close();
            }
        }
    }
}