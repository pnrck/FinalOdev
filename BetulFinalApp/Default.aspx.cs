using BetulFinalApp.Helper_Codes;
using System;
using System.Data;
using System.Web.UI;

namespace BetulFinalApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            if (id > 0)
            {
                ltrAlertBox.Text = AlertBoxHelper.GetResponseAlertBox(DbHelper.UrunDelete(id));
            }

            DataTable dtUrun = DbHelper.UrunListGetDatatable();
            gvUrunler.DataSource = dtUrun;
            gvUrunler.DataBind();

        }
    }
}