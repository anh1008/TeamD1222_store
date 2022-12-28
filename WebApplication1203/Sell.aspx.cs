using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1203
{
    public partial class Sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(
           "Data Source=140.118.105.204,1433;Initial Catalog=Bookstore;User ID=test;Password=#Te1amD0!");
                SqlCommand command = new SqlCommand("INSERT INTO [dbo].[Products] ( [category_id],[title],[payment_seller],  [location], [country], [condition], [price]) VALUES(@category_id,@title, @payment_seller, @location, @country, @condition, @price)", con);
                command.Parameters.AddWithValue("category_id", DropDownList1.SelectedValue);
                command.Parameters.AddWithValue("title", TB1.Text);
                command.Parameters.AddWithValue("payment_seller", TB2.Text);
                command.Parameters.AddWithValue("location", TB3.Text);
                command.Parameters.AddWithValue("country", TB4.Text);
                command.Parameters.AddWithValue("condition", int.Parse(TB5.Text));
                command.Parameters.AddWithValue("price", int.Parse(TB6.Text));
                SqlDataAdapter sda = new SqlDataAdapter(command);
                con.Open();
                int i = command.ExecuteNonQuery();
                con.Close();
                //輸入完清空
                TB1.Text = "";
                TB2.Text = "";
                TB3.Text = "";
                TB4.Text = "";
                TB5.Text = "";
                TB6.Text = "";
                Label1.Text = "新增成功";
            }
            catch (System.Exception ex)
            {
                
            }
        }
    }
}
