using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class Account : System.Web.UI.Page
    {
        Rent onjRent = new Rent();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            onjRent.InsertNameTable(Nametext.Text, TextDob.Text);
            onjRent.InsertUsertabel(txtUser.Text, txtpassword.Text);
            Response.Redirect("Welcome.aspx");

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}