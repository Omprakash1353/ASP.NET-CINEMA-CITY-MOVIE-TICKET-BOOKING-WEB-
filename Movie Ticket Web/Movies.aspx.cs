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
    public partial class Movies : System.Web.UI.Page
    {
        static string query1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies];");
                SqlCommand cmd1 = new SqlCommand(query1, con);
                con.Open();
                SqlDataReader reader1 = cmd1.ExecuteReader();
                Repeater1.DataSource = reader1;
                Repeater1.DataBind();
                reader1.Close();
                con.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string DropDown = DropDownList1.SelectedValue;
            // Response.Write("<script>alert('None');</script>");
            string textSearch = TextBox1.Text;
            if (textSearch == "")
            {
                // Response.Write("<script>alert('None');</script>");
                query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies];");
            }
            else if (DropDown == "Movie")
            {
                // Response.Write("<script>alert('Movie " + textSearch + "');</script>");
                query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies] WHERE [MovieName] LIKE '%" + textSearch + "%';");
            }
            else if(DropDown == "Price")
            {
                // Response.Write("<script>alert('Price');</script>");
                string[] wrds = textSearch.Split(' ');
                if (wrds[0].ToLower() == "under")
                {
                    int price = int.Parse(wrds[1]);
                    query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies] WHERE [MoviePrice] < " + price + ";");
                }
                else if (wrds[0].ToLower() == "above")
                {
                    int price = int.Parse(wrds[1]);
                    query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies] WHERE [MoviePrice] > " + price + ";");
                }
                else
                {
                    query1 = string.Format("SELECT [MovieImageFilePath], [MovieName], [MovieID] FROM [MovieTicketDB].[dbo].[RunningMovies];");
                }
            }

            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd1 = new SqlCommand(query1, con);
            con.Open();
            SqlDataReader reader1 = cmd1.ExecuteReader();
            Repeater1.DataSource = reader1;
            Repeater1.DataBind();
            reader1.Close();
            con.Close();
            
        }
    }
}