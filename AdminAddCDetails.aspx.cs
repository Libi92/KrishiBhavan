using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlCommand cmd;
    string con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        con = ConfigurationManager.ConnectionStrings["krishibhavanConnectionString"].ConnectionString;
    }
    protected void Cucumber(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        LblResult.Visible = false;
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Tomato(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        LblResult.Visible = false;
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Beans(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        LblResult.Visible = false;
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Guard(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        LblResult.Visible = false;
        MultiView1.ActiveViewIndex = 3;
    }

    protected void BtnCrop1_Click(object sender, EventArgs e)
    {
        if ((TBCrop1.Text == "") && (TBCrop2.Text == "") && (TBCrop3.Text == "") && (TBCrop4.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            mycon = new SqlConnection(con);
            mycon.Open();
            string insert = "insert into Krishibhavan.dbo.crops(commonname,botani,family,bottanical) values('" + TBCrop1.Text + "','" + TBCrop2.Text + "','" + TBCrop3.Text + "','" + TBCrop4.Text + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "Crop Details Updated Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnIrrg1_Click(object sender, EventArgs e)
    {
        if ((TBIrrg1.Text == "") && (TBIrrg2.Text == "") && (TBIrrg3.Text == "") && (TBIrrg4.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            mycon = new SqlConnection(con);
            mycon.Open();
            string insert = "insert into Krishibhavan.dbo.irrigation(crops,growthstages,cropduration,watter) values('" + TBIrrg1.Text + "','" + TBIrrg2.Text + "','" + TBIrrg3.Text + "','" + TBIrrg4.Text + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "Irrigation Details Updated Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnSoil1_Click(object sender, EventArgs e)
    {
        if ((TBSoil1.Text == "") && (TBSoil2.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            mycon = new SqlConnection(con);
            mycon.Open();
            string insert = "insert into Krishibhavan.dbo.soils(soilname,details) values('" + TBSoil1.Text + "','" + TBSoil2.Text + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "Soil Details Updated Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnPrc1_Click(object sender, EventArgs e)
    {
        if ((TBPrc1.Text == "") && (TBPrc2.Text == "") && (TBPrc3.Text == "") && (TBPrc4.Text == "") && (TBPrc5.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            mycon = new SqlConnection(con);
            mycon.Open();
            string insert = "insert into Krishibhavan.dbo.vegitables (Name,Varieties,preparationofland,Manuring,Plantprotection) values ('" + TBPrc1.Text + "','" + TBPrc2.Text + "','" + TBPrc3.Text + "','" + TBPrc4.Text + "','" + TBPrc5.Text + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "Package of Practice Details Updated Successfully";
            LblResult.Visible = true;
        }
    }
}