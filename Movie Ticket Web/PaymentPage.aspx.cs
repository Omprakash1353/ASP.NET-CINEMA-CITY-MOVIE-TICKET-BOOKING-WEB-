using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Web
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if(visa.Checked || mastercard.Checked || paypal.Checked || AMEX.Checked)
            {
                Response.Write("<script>alert('Payment Success');</script>");
                Response.Redirect("Movies.aspx");
            }
        }
    }
}