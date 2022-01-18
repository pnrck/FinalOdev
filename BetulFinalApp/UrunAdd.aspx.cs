using BetulFinalApp.Helper_Codes;
using BetulFinalApp.Models;
using System;
using System.Web;
using System.Web.UI;

namespace BetulFinalApp
{
    public partial class UrunAdd : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string fotografDosyaYolu = "Upload\\" + fuFotografDosyoYolu.FileName;
            if (!string.IsNullOrEmpty(fuFotografDosyoYolu.FileName))
            {
                fuFotografDosyoYolu.SaveAs(HttpRuntime.AppDomainAppPath + fotografDosyaYolu);
            }

            Urun urun = new Urun
            {
                Adi = txtAdi.Text,
                Kodu = txtKodu.Text,
                Aciklama = txtAciklama.Text,
                Adet = Convert.ToInt32(txtAdet.Text),
                Mensei = Convert.ToInt32(ddlMensei.SelectedValue),
                KdvOrani = Convert.ToInt32(ddlKdvOrani.SelectedValue),
                Maliyet = Convert.ToInt32(txtMaliyet.Text),
                Fiyat = Convert.ToInt32(txtFiyat.Text),
                FotografDosyaYolu = fotografDosyaYolu
            };

            ltrAlertBox.Text = AlertBoxHelper.GetResponseAlertBox(DbHelper.UrunAdd(urun));
        }
    }
}