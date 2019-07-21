using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            String usertext = txtUser.Text;
            String passtext = txtpassword.Text;


            CarRentEntities1 db = new CarRentEntities1();
            string query = (from c in db.UserNameTables
                            where c.Username == usertext && c.Password == passtext
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Rental.aspx");
            }
            else
            {
                Response.Write("invalid username or password");

            }
        }
        protected void Register_Click(object sender, EventArgs e)
        {

        }

        protected void Register_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
    }
}