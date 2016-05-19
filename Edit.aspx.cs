using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQuery = ""; 
        if (Request.QueryString["id"] != null)
        {
            strQuery = Request.QueryString["id"].ToString();
        }




        Call_Database classDB = new Call_Database();
        Repeater1.DataSource = classDB.db;
        Repeater1.DataBind();
    }

    protected bool CheckFileType(string strFileName)
    {

        string strExt = System.IO.Path.GetExtension(strFileName).ToLower();
        bool isGraphic = false;

        switch (strExt)
        {
            case ".bmp":
                isGraphic = true;
                break;
            case ".jpg":
                isGraphic = true;
                break;
            case ".gif":
                isGraphic = true;
                break;
            case ".jpeg":
                isGraphic = true;
                break;
            case ".png":
                isGraphic = true;
                break;
            default:
                isGraphic = false;
                break;
        }
        return isGraphic;
    }

    protected void SubButton_Click(object sender, EventArgs e)
    {
        Call_Database callDb = new Call_Database();

        if (ImageUpload.HasFile)
        {
            if (CheckFileType(ImageUpload.FileName))
            {
                string strPath = "~/Images/" + ImageUpload.FileName;

                ImageUpload.SaveAs(MapPath(strPath));

            }
        }
        if (NameBox.Text != "" && txtProfile.Text != "")
        {

            callDb.Add(NameBox.Text, ImageUpload.FileName, txtProfile.Text);

            NameBox.Text = String.Empty;
            txtProfile.Text = String.Empty;
            Response.Redirect(Request.RawUrl);
        }
    }

}