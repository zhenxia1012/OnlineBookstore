using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class product : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    DataSet myDs1 = new DataSet();
    SqlDataAdapter myDa;
    DataView view = new DataView();
    static int[] count = new int[5];
    public string RecordCcount
    {
        get
        {
            return count[4].ToString();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            OrderBind();
            ListBind();
        }
        else
        {
            OrderBind();
            view.Table = (DataTable)(Session["Tabletemporate"]);
            this.ListView_Products.DataSource = view;
            DataBind();
        }
        Page.DataBind();
    }

    public SqlConnection GetConnection()
    {
        string str = "Server=(local);User Id=sa;Pwd=123;Database=bookstore";
        SqlConnection con = new SqlConnection(str);
        return con;
    }

    public void ListBind()
    {
        string str1 = "select * from[book]";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        Session["Tabletemporate"] = myDs.Tables[0];
        count[4] = myDs.Tables[0].Rows.Count;
        this.ListView_Products.DataSource = myDs;
        DataBind();
        sqlcon.Close();
    }

    public void OrderBind()
    {
        string str2 = "select top 5* from[book] order by visit desc";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str2, sqlcon);
        myDa.Fill(myDs1);
        this.Orderview.DataSource = myDs1;
        this.Orderview.DataBind();
        sqlcon.Close();
    }

    public void Order(ref int count1, string OrderName)
    {
        if (count1 == 0)
            view.Sort = OrderName + " asc";
        else
            view.Sort = OrderName + " desc";

        this.ListView_Products.DataSource = view;
        DataBind();

        count1 = (count1 + 1) % 2;
    }

    public void CataChoose(string cata_id)
    {
        DataPager1.SetPageProperties(0,5,false);
        myDs.Clear();
        string str4 = "select * from[book],[category]where book.category_id=category.category_id and book.category_id = " + cata_id;
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str4, sqlcon);
        myDa.Fill(myDs);
        count[4] = myDs.Tables[0].Rows.Count;
        Session["Tabletemporate"] = myDs.Tables[0];
        this.ListView_Products.DataSource = myDs;
        DataBind();
        sqlcon.Close();
    }

    protected void SearchPress_Click(object sender, EventArgs e)
    {
        myDs.Clear();
        string str3 = "select * from[book]where book_name like "+"'%"+this.Search.Text.ToString()+"%'";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str3, sqlcon);
        myDa.Fill(myDs);
        count[4] = myDs.Tables[0].Rows.Count;
        Session["Tabletemporate"] = myDs.Tables[0];
        this.ListView_Products.DataSource = myDs;
        DataBind();
        sqlcon.Close();
    }

    protected void PriceUp_Click(object sender, EventArgs e)
    {
        view.Table.Columns.Add("DisPrice", typeof(decimal));
        for(int i=0; i<view.Table.Rows.Count; i++)
        {
            view.Table.Rows[i]["DisPrice"] = Convert.ToDecimal(view.Table.Rows[i]["price"]) * Convert.ToDecimal(view.Table.Rows[i]["discount"]);
        }

        if (count[0] == 0)
            view.Sort = "DisPrice asc";
        else
            view.Sort = "DisPrice desc";

        this.ListView_Products.DataSource = view;
        DataBind();

        view.Table.Columns.Remove("DisPrice");
        count[0] = (count[0] + 1) % 2;
    }

    protected void DisCount_Click(object sender, EventArgs e)
    {
        Order(ref count[1], "discount");
    }

    protected void NewBook_Click(object sender, EventArgs e)
    {
        Order(ref count[2], "book_id");
    }

    protected void SaleCount_Click(object sender, EventArgs e)
    {
        Order(ref count[3], "sale");
    }

    protected void story_Click(object sender, EventArgs e)
    {
        CataChoose("1");
    }

    protected void ChildrenBook_Click(object sender, EventArgs e)
    {
        CataChoose("6");
    }
    protected void Science_Click(object sender, EventArgs e)
    {
        CataChoose("3");
    }
    protected void LifeScience_Click(object sender, EventArgs e)
    {
        CataChoose("2");
    }
    protected void History_Click(object sender, EventArgs e)
    {
        CataChoose("4");
    }
    protected void Literature_Click(object sender, EventArgs e)
    {
        CataChoose("5");
    }

    protected void ListView_Products_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows,false);
        DataBind();
    }

    protected void book1_Click(object sender, EventArgs e)
    {
        string id = ((LinkButton)sender).CommandArgument;
        Response.Redirect("~/Default2.aspx?bookid=" + id);
    }

}