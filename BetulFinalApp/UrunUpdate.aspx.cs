using BetulFinalApp.Helper_Codes;
using BetulFinalApp.Models;
using System;
using System.Web;

namespace BetulFinalApp
{
    public partial class UrunUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            Urun urun = DbHelper.GetUrun(id);

            hdnId.Value = id.ToString();
            txtAdi.Text = urun.Adi;
            txtKodu.Text = urun.Kodu;
            txtAciklama.Text = urun.Aciklama;
            txtAdet.Text = urun.Adet.ToString();
            ddlMensei.SelectedValue = urun.Mensei.ToString();
            ddlKdvOrani.SelectedValue = urun.KdvOrani.ToString();
            txtMaliyet.Text = urun.Maliyet.ToString();
            txtFiyat.Text = urun.Fiyat.ToString();
        }
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string fotografDosyaYolu = "Upload\\" + fuFotografDosyoYolu.FileName;
            if (!string.IsNullOrEmpty(fuFotografDosyoYolu.FileName))
            {
                fuFotografDosyoYolu.SaveAs(HttpRuntime.AppDomainAppPath + fotografDosyaYolu);
            }

            Urun urun = new Urun
            {

                Id = Convert.ToInt32(hdnId.Value),
                Adi = txtAdi.Text,
                Kodu = txtKodu.Text,
                Adet = Convert.ToInt32(txtAdet.Text),
                Mensei = Convert.ToInt32(ddlMensei.SelectedValue),
                KdvOrani = Convert.ToInt32(ddlKdvOrani.SelectedValue),
                Maliyet = Convert.ToDecimal(txtMaliyet.Text),
                Fiyat = Convert.ToDecimal(txtFiyat.Text)
            };

            if (!string.IsNullOrEmpty(txtAciklama.Text))
            {
                urun.Aciklama = txtAciklama.Text;
            }

            if (!string.IsNullOrEmpty(fuFotografDosyoYolu.FileName))
            {
                urun.FotografDosyaYolu = fotografDosyaYolu;
            }

            ltrAlertBox.Text = AlertBoxHelper.GetResponseAlertBox(DbHelper.UrunUpdate(urun));
        }

    }
}