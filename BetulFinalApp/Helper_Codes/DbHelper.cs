using BetulFinalApp.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BetulFinalApp.Helper_Codes
{
    public static class DbHelper
    {
        const string ConnectionString = @"Data Source=.;Initial Catalog=UrunTakip;Integrated Security=True;";

        private static void FillParametersFromUrun(Urun urun, SqlParameterCollection parameterCollection)
        {
            parameterCollection.Add("@adi", SqlDbType.NVarChar).Value = urun.Adi;
            parameterCollection.Add("@kodu", SqlDbType.NVarChar).Value = urun.Kodu;
            parameterCollection.Add("@aciklama", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(urun.Aciklama) ? "" : urun.Aciklama;
            parameterCollection.Add("@adet", SqlDbType.Int).Value = urun.Adet;
            parameterCollection.Add("@mensei", SqlDbType.Int).Value = urun.Mensei;
            parameterCollection.Add("@kdvOrani", SqlDbType.Int).Value = urun.KdvOrani;
            parameterCollection.Add("@maliyet", SqlDbType.Decimal).Value = urun.Maliyet;
            parameterCollection.Add("@fiyat", SqlDbType.Decimal).Value = urun.Fiyat;
            parameterCollection.Add("@fotografDosyaYolu", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(urun.FotografDosyaYolu) ? "" : urun.FotografDosyaYolu;
        }

        public static Urun GetUrun(int id)
        {
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                StringBuilder sbQuery = new StringBuilder();
                sbQuery.Append("SELECT * FROM Urun ");
                sbQuery.Append("WHERE Id=@id");


                using (SqlCommand command = new SqlCommand(sbQuery.ToString(), connection))
                {
                    SqlParameterCollection parameterCollection = command.Parameters;
                    parameterCollection.Add("@id", SqlDbType.Int).Value = id;

                    connection.Open();

                    SqlDataAdapter adp = new SqlDataAdapter(command);
                    adp.Fill(dt);
                }
            }

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                Urun urun = new Urun
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    Adi = dr["Adi"].ToString(),
                    Kodu = dr["Kodu"].ToString(),
                    Aciklama = dr["Aciklama"].ToString(),
                    Adet = Convert.ToInt32(dr["Adet"]),
                    Mensei = Convert.ToInt32(dr["Mensei"]),
                    KdvOrani = Convert.ToInt32(dr["KdvOrani"]),
                    Maliyet = Convert.ToDecimal(dr["Maliyet"]),
                    Fiyat = Convert.ToDecimal(dr["Fiyat"]),
                    FotografDosyaYolu = dr["FotografDosyaYolu"].ToString()
                };

                return urun;
            }


            return null;
        }
        public static DataTable UrunListGetDatatable()
        {
            DataTable dt = new DataTable();

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                StringBuilder sbQuery = new StringBuilder();
                sbQuery.Append("SELECT * FROM Urun ");


                using (SqlCommand command = new SqlCommand(sbQuery.ToString(), connection))
                {
                    connection.Open();

                    SqlDataAdapter adp = new SqlDataAdapter(command);
                    adp.Fill(dt);
                }
            }

            return dt;
        }
        public static List<Urun> UrunList()
        {
            DataTable dt = UrunListGetDatatable();

            List<Urun> urunList = new List<Urun>();
            foreach (DataRow dr in dt.Rows)
            {
                Urun urun = new Urun
                {
                    Adi = dr["Adi"].ToString(),
                    Kodu = dr["Kodu"].ToString(),
                    Aciklama = dr["Aciklama"].ToString(),
                    Adet = Convert.ToInt32(dr["Adet"]),
                    Mensei = Convert.ToInt32(dr["Mensei"]),
                    KdvOrani = Convert.ToInt32(dr["KdvOrani"]),
                    Maliyet = Convert.ToDecimal(dr["Maliyet"]),
                    Fiyat = Convert.ToDecimal(dr["Fiyat"]),
                    FotografDosyaYolu = dr["FotografDosyaYolu"].ToString()
                };
                urunList.Add(urun);
            }

            return urunList;
        }
        public static bool UrunAdd(Urun urun)
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                StringBuilder sbQuery = new StringBuilder();
                sbQuery.Append("INSERT INTO dbo.Urun ");
                sbQuery.Append("(Adi, Kodu, Aciklama, Adet, Mensei, KdvOrani, Maliyet, Fiyat, FotografDosyaYolu) ");
                sbQuery.Append("VALUES ");
                sbQuery.Append("(@adi,@kodu,@aciklama,@adet,@mensei,@kdvOrani,@maliyet,@fiyat,@fotografDosyaYolu);");


                using (SqlCommand command = new SqlCommand(sbQuery.ToString(), connection))
                {
                    SqlParameterCollection parameterCollection = command.Parameters;
                    FillParametersFromUrun(urun, parameterCollection);

                    connection.Open();
                    int result = command.ExecuteNonQuery();
                    return result > 0;
                }
            }
        }
        public static bool UrunUpdate(Urun urun)
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                StringBuilder sbQuery = new StringBuilder();
                sbQuery.Append("UPDATE Urun SET ");
                sbQuery.Append("Adi=@adi, Kodu=@kodu, Aciklama=@aciklama, Adet=@adet, Mensei=@mensei, KdvOrani=@kdvOrani, Maliyet=@maliyet, Fiyat=@fiyat, FotografDosyaYolu=@fotografDosyaYolu ");
                sbQuery.Append("WHERE Id=@id");


                using (SqlCommand command = new SqlCommand(sbQuery.ToString(), connection))
                {
                    SqlParameterCollection parameterCollection = command.Parameters;
                    FillParametersFromUrun(urun, parameterCollection);
                    parameterCollection.Add("@id", SqlDbType.Int).Value = urun.Id;

                    connection.Open();
                    int result = command.ExecuteNonQuery();
                    return result > 0;
                }
            }
        }
        public static bool UrunDelete(int id)
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                StringBuilder sbQuery = new StringBuilder();
                sbQuery.Append("DELETE FROM Urun ");
                sbQuery.Append("WHERE Id=@id");


                using (SqlCommand command = new SqlCommand(sbQuery.ToString(), connection))
                {
                    SqlParameterCollection parameterCollection = command.Parameters;
                    parameterCollection.Add("@id", SqlDbType.Int).Value = id;

                    connection.Open();
                    int result = command.ExecuteNonQuery();
                    return result > 0;
                }
            }
        }

    }
}