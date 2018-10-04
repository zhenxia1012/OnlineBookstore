using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataSet myDs = new DataSet();
    DataView view = new DataView();
    DataTable table = new DataTable();
    SqlDataAdapter myDa;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CataBind();
        }

        Address_Table();
    }

    public void CataBind()
    {
        string str = "select PName from [Province]";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str, sqlcon);
        myDa.Fill(myDs);
        sqlcon.Close();

        ArrayList catalist = new ArrayList();
        for (int i = 0; i < myDs.Tables[0].Rows.Count; i++)
            catalist.Add(myDs.Tables[0].Rows[i]["PName"]);

        this.Province_List.DataSource = catalist;
        this.Province_List.DataBind();
        myDs.Clear();
    }

    public void Address_Table()
    {
        string str1 = "select PName,CName from [City],[Province] where [City].ProvinceID = [Province].ID";
        SqlConnection sqlcon = GetConnection();
        sqlcon.Open();
        myDa = new SqlDataAdapter(str1, sqlcon);
        myDa.Fill(myDs);
        sqlcon.Close();

        view = myDs.Tables[0].DefaultView;
    }

    public SqlConnection GetConnection()
    {
        string str = "Server=(local);User Id=sa;Pwd=123;Database=bookstore";
        SqlConnection con = new SqlConnection(str);
        return con;
    }

    protected void Province_List_TextChanged(object sender, EventArgs e)
    {
        view.RowFilter = "PName='" + this.Province_List.Text + "'";
        table = view.ToTable();
        ArrayList catalist = new ArrayList();

        for (int i = 0; i < table.Rows.Count; i++)
            catalist.Add(table.Rows[i]["CName"]);

        this.City_List.DataSource = catalist;
        this.City_List.DataBind();
    }
}