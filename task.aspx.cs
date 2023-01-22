using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _22_1
{
    public partial class task : System.Web.UI.Page
    {
        testEntities db = new testEntities();
        String city;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var all = (from m in db.Customers select new { m.customerID, m.customerName, m.age, m.city,m.photo });
                GridView1.DataSource = all.ToList();
                GridView1.DataBind();



                var c = from City in db.Cities select City;
                DropDownList1.DataSource=c.ToList();
                DropDownList1.DataTextField = "cityName";
                DropDownList1.DataValueField = "cityID";
                DropDownList1.DataBind();   
            }
            var x = DropDownList1.SelectedValue;

            if (x == "1") { city = "Amman"; }
            else if (x == "2") { city = "Irbid"; }
            else if (x == "3") { city = "zarqaa"; }
            else if (x == "4") { city = "Jarash"; }
            Session["city"]= city;

            var customerNum=(from m in db.Customers select m).Count();
            var avg = (from m in db.Customers select m.age).Average();
            var max = (from m in db.Customers select m.age).Max();
            Label7.Text = "Number of Customer : "+ customerNum.ToString();
            Label8.Text = "Avarge for Age : "+avg.ToString();
            Label9.Text = "Max Age : " + max.ToString();

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Image/");
            var newProduct = new Customer
            {
                customerName = TxtName.Text,
                age = Convert.ToInt32(TxtAge.Text),
                city = (string)Session["city"],
                phone = Convert.ToInt32(TxtPhone.Text),
                email = TxtEmail.Text,
                photo = "Image\\" + FileUpload1.FileName

            };
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            db.Customers.Add(newProduct);
            db.SaveChanges();
            PlaceHolder1.Visible = false;
            Button3.Visible = true;
            Response.Redirect("task.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var all = (from m in db.Customers where m.customerName.Contains(TextBox1.Text) select m);
            GridView1.DataSource=all.ToList();  
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Name";
                e.Row.Cells[2].Text = "Age";
                e.Row.Cells[3].Text = "City";
                


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            PlaceHolder1.Visible = true;
            Button3.Visible = false;
        }
    }
}