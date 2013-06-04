using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
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
        if ((TBCrop1.Text == "") && (TBCrop2.Text == "") && (TBCrop3.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            if(FileUpload1.HasFile)
            {
                try
                {
                if(FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                if 
                (FileUpload1.PostedFile.ContentLength < 512000)
                {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("store/" + FileUpload1.FileName));
                LblResult.Text="File uploaded successfully!";
                LblResult.Visible=true;
                }
                else
                
                LblResult.Text ="File maximum size is 500 Kb";
                }
                else
                
                LblResult.Text ="Only JPEG files are accepted!";
                }
                catch 
                (Exception exc)
                {
                LblResult.Text ="The file could not be uploaded. The following error occured: "+ exc.Message;
                }
                }
                
            mycon = new SqlConnection(con);
            mycon.Open();
           // FileUpload1.SaveAs(Server.MapPath("store/" + FileUpload1.FileName));
            string insert = "insert into Krishibhavan.dbo.online(type,name,description,prize,picture) values('crop','" + TBCrop1.Text + "','" + TBCrop2.Text + "','" + TBCrop3.Text + "','store/" + FileUpload1.FileName + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "New Crop Added Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnMach1_Click(object sender, EventArgs e)
    {
        if ((TBMach1.Text == "") && (TBMach2.Text == "") && (TBMach3.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            if (FileUpload2.HasFile)
            {
                try
                {
                    if (FileUpload2.PostedFile.ContentType == "image/jpeg")
                    {
                        if
                        (FileUpload2.PostedFile.ContentLength < 512000)
                        {
                            string filename = Path.GetFileName(FileUpload2.FileName);
                            FileUpload2.SaveAs(Server.MapPath("store/" + FileUpload2.FileName));
                            LblResult.Text = "File uploaded successfully!";
                            LblResult.Visible = true;
                        }
                        else

                            LblResult.Text = "File maximum size is 500 Kb";
                    }
                    else

                        LblResult.Text = "Only JPEG files are accepted!";
                }
                catch
                (Exception exc)
                {
                    LblResult.Text = "The file could not be uploaded. The following error occured: " + exc.Message;
                }
            }
            mycon = new SqlConnection(con);
            mycon.Open();
         //   FileUpload2.SaveAs(Server.MapPath("store/" + FileUpload2.FileName));
            string insert = "insert into Krishibhavan.dbo.online(type,name,description,prize,picture) values('mechine','" + TBMach1.Text + "','" + TBMach2.Text + "','" + TBMach3.Text + "','store/" + FileUpload2.FileName + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "New Machine Added Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnFert1_Click(object sender, EventArgs e)
    {
        if ((TBFert1.Text == "") && (TBFert2.Text == "") && (TBFert3.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            if (FileUpload3.HasFile)
            {
                try
                {
                    if (FileUpload3.PostedFile.ContentType == "image/jpeg")
                    {
                        if
                        (FileUpload3.PostedFile.ContentLength < 512000)
                        {
                            string filename = Path.GetFileName(FileUpload3.FileName);
                            FileUpload3.SaveAs(Server.MapPath("store/" + FileUpload3.FileName));
                            LblResult.Text = "File uploaded successfully!";
                            LblResult.Visible = true;
                        }
                        else

                            LblResult.Text = "File maximum size is 500 Kb";
                    }
                    else

                        LblResult.Text = "Only JPEG files are accepted!";
                }
                catch
                (Exception exc)
                {
                    LblResult.Text = "The file could not be uploaded. The following error occured: " + exc.Message;
                }
            }
            mycon = new SqlConnection(con);
            mycon.Open();
         //   FileUpload3.SaveAs(Server.MapPath("store/" + FileUpload3.FileName));
            string insert = "insert into Krishibhavan.dbo.online(type,name,description,prize,picture) values('fertilizer','" + TBFert1.Text + "','" + TBFert2.Text + "','" + TBFert3.Text + "','store/" + FileUpload3.FileName + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "New Fertilizer Added Successfully";
            LblResult.Visible = true;
        }
    }
    protected void BtnPest1_Click(object sender, EventArgs e)
    {
        if ((TBPest1.Text == "") && (TBPest2.Text == "") && (TBPest3.Text == ""))
        {
            LblResult.Text = "Enter the required Fields";
            LblResult.Visible = true;
            return;
        }
        else
        {
            if (FileUpload4.HasFile)
            {
                try
                {
                    if (FileUpload4.PostedFile.ContentType == "image/jpeg")
                    {
                        if
                        (FileUpload4.PostedFile.ContentLength < 512000)
                        {
                            string filename = Path.GetFileName(FileUpload4.FileName);
                            FileUpload4.SaveAs(Server.MapPath("store/" + FileUpload4.FileName));
                            LblResult.Text = "File uploaded successfully!";
                            LblResult.Visible = true;
                        }
                        else

                            LblResult.Text = "File maximum size is 500 Kb";
                    }
                    else

                        LblResult.Text = "Only JPEG files are accepted!";
                }
                catch
                (Exception exc)
                {
                    LblResult.Text = "The file could not be uploaded. The following error occured: " + exc.Message;
                }
            }
            mycon = new SqlConnection(con);
            mycon.Open();
            //FileUpload4.SaveAs(Server.MapPath("store/" + FileUpload4.FileName));
            string insert = "insert into Krishibhavan.dbo.online(type,name,description,prize,picture) values('pesticide','" + TBPest1.Text + "','" + TBPest2.Text + "','" + TBPest3.Text + "','store/" + FileUpload4.FileName + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            Panel1.Visible = false;
            LblResult.Text = "New Pesticide Added Successfully";
            LblResult.Visible = true;
        }
        
    }
}