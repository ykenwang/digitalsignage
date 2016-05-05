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
    //string connStr = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\maindb.mdf;Integrated Security = True";

    protected void Page_Load(object sender, EventArgs e)
    {

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
            using (SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\maindb.mdf;Integrated Security = True"))
            {
                SqlCommand CmdSql = new SqlCommand("INSERT INTO [donors] (name, photo, profile) VALUES (@name, @photo, @profile)", conn);
                conn.Open();
                CmdSql.Parameters.AddWithValue("@Name", NameBox.Text);
                CmdSql.Parameters.AddWithValue("@photo", "/Images/" + ImageUpload.FileName);
                CmdSql.Parameters.AddWithValue("@profile", txtProfile.Text);
                CmdSql.ExecuteNonQuery();
                conn.Close();
            }

        NameBox.Text = String.Empty;
        txtProfile.Text = String.Empty;
        Response.Redirect(Request.RawUrl);
    }
}
}