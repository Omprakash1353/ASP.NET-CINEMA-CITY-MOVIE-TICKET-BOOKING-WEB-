using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                LinkButton1.Visible = false;
                LinkButton2.Visible = true;
                LinkButton3.Visible = true;
                LinkButton4.Visible = false;
            }
            else if (Session["role"].Equals("user"))
            {
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = true;
                string profile = Session["UserID"].ToString();
                if(profile != null)
                {
                    Label100.Text = profile[0].ToString();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Session["UserID"] = null;
            LinkButton1.Visible = false;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton4.Visible = false;
            Response.Redirect("homepage.aspx");
        }
    }
}