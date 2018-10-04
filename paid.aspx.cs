using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class paid : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    SqlDataAdapter myDa;
    //string OrderID;

    protected void Page_Load(object sender, EventArgs e)
    {
        //OrderID = Request["id"].ToString();
        OrderBind();
        ListBind(" ");
        
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
        myDs.Clear();
        string str1 = "select * from[book],[bookinorder],[order] where book.book_id = bookinorder.book_id and bookinorder.order_id = [order].order_id and [order].order_id = " + a;
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        this.Order_payment.DataSource = myDs;
        this.Order_payment.DataBind();
        this.TotalPrice.Text = "订单总价：" + Convert.ToDecimal(myDs.Tables[0].Rows[0]["totalmoney"]).ToString("0.00");
        this.Address.Text = "收货地址：" + myDs.Tables[0].Rows[0]["address"];
        this.PhoneNumber.Text = "联系电话：" + myDs.Tables[0].Rows[0]["phone"];
        this.Memo.Text = "备注：" + myDs.Tables[0].Rows[0]["memo"];
        sqlcon.Close();
    }
    
    public void OrderBind()
    {
        string str2 = "select top 5* from[book] order by visit desc";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str2, sqlcon);
        myDa.Fill(myDs);
        this.Orderview.DataSource = myDs;
        this.Orderview.DataBind();
        sqlcon.Close();
    }

    protected void booklink_Click(object sender, EventArgs e)
    {
        string id = ((LinkButton)sender).CommandArgument;
        Response.Redirect("~/Default2.aspx?bookid=" + id);
    }

    protected void bookimagelink_Click(object sender, EventArgs e)
    {
        string id = ((ImageButton)sender).CommandArgument;
        Response.Redirect("~/Default2.aspx?bookid=" + id);
    }
}