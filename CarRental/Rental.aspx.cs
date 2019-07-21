using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class Rental : System.Web.UI.Page
    {

        Rent objrent = new Rent();
        CarRentEntities1 dataload = new CarRentEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();

        }

        protected void AddCarbtn_Click(object sender, EventArgs e)
        {
            objrent.caradd(MakeTextbox.Text, Modeltextbox.Text, Colortext.Text, YearText.Text);
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();
        }

        protected void UpdateCarbtn_Click(object sender, EventArgs e)
        {
            objrent.updatecar(Convert.ToInt32(Idtextcar.Text),MakeTextbox.Text, Modeltextbox.Text, Colortext.Text, YearText.Text);
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();
        }

        protected void DeleteCarbtn_Click(object sender, EventArgs e)
        {
            objrent.CarDelete(Convert.ToInt32(Idtextcar.Text));
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();
        }

        protected void RentCarbtn_Click(object sender, EventArgs e)
        {
            objrent.RentCar(nametext.Text, Convert.ToInt32(Idtextcar.Text), textdob.Text);
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();
        }

        protected void ReturnCarbtn1_Click(object sender, EventArgs e)
        {
            objrent.ReturnCar(Convert.ToInt32(custtext .Text));
            GridView1.DataSource = dataload.CustomerNames.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataload.Cartables.ToList();
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            custtext.Text = GridView1.SelectedRow.Cells[1].Text;
            nametext.Text = GridView1.SelectedRow.Cells[2].Text;
            Idtextcar.Text = GridView1.SelectedRow.Cells[3].Text;
            textdob.Text = GridView1.SelectedRow.Cells[4].Text;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Idtextcar.Text = GridView2.SelectedRow.Cells[1].Text;
            MakeTextbox.Text = GridView2.SelectedRow.Cells[2].Text;
            Modeltextbox.Text = GridView2.SelectedRow.Cells[3].Text;
            Colortext.Text = GridView2.SelectedRow.Cells[4].Text;
            YearText.Text = GridView2.SelectedRow.Cells[5].Text;
        }
    }
}