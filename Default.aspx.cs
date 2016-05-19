using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        Call_Database callDb = new Call_Database();
        dt = callDb.db;

        HtmlGenericControl div, h, p, img;

        foreach (DataRow row in dt.Rows)
        {
            Response.Write(row["name"]);
            h = new HtmlGenericControl("h3");
            h.ID = "dynDivCode";
            h.InnerHtml = row["name"].ToString();
            accordion.Controls.Add(h);
           
            div = new HtmlGenericControl("div");

            img = new HtmlGenericControl("img");
            img.Attributes["src"] = row["photo"].ToString();
            img.Attributes["class"] = "photos";
            div.Controls.Add(img);

            p = new HtmlGenericControl("p");
            p.InnerHtml = row["profile"].ToString();
            div.Controls.Add(p);

            accordion.Controls.Add(div);
        }
    }


}