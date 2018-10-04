using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class order_detail : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    SqlDataAdapter myDa;
    DataView view = new DataView();
    //string OrderID;

    protected void Page_Load(object sender, EventArgs e)
    {
        //OrderID = Request["id"].ToString();
        ListBind(" ");
        Page.DataBind();
    }

    public SqlConnection GetConnection()
    {
        string str = "Server=(local);User Id=sa;Pwd=123;Database=bookstore";
        SqlConnection con = new SqlConnection(str);
        return con;
    }

    public void ListBind(string id)
    {
        string a = "20150713163744140";
        //string str1 = "select * from[book],[bookinorder],[order] where book.book_id = bookinorder.book_id and bookinorder.order_id = [order].order_id";
        string str1 = "select * from[book],[bookinorder],[order] where book.book_id = bookinorder.book_id and bookinorder.order_id = [order].order_id and [order].order_id = " + a;
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        view.Table = myDs.Tables[0];
        this.Order_unpayment.DataSource = myDs;
        DataBind();
        sqlcon.Close();
    }

    public string Gettotalvalue()
    {
        return Convert.ToDecimal(view.Table.Rows[0]["totalmoney"]).ToString("0.00");
    }

    protected void Payment_Click(object sender, EventArgs e)
    {
        /*string str1 = "Update [order] set phone='"+this.Phone.Text+"' where order_id = 20150713163744140";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        SqlCommand myCmd = new SqlCommand(str1, sqlcon);
        myCmd.ExecuteNonQuery();
        sqlcon.Close();*/

        //Response.Redirect("~/Default2.aspx?value=" + this.Phone.Text);
        Response.Write("<h1>" + this.Phone.Text);
    }
}