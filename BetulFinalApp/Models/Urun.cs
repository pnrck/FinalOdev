namespace BetulFinalApp.Models
{
    public class Urun
    {
        public int Id { get; set; }
        public string Adi { get; set; }
        public string Kodu { get; set; }
        public string Aciklama { get; set; }
        public int Adet { get; set; }
        public int Mensei { get; set; }
        public int KdvOrani { get; set; }
        public decimal Maliyet { get; set; }
        public decimal Fiyat { get; set; }
        public string FotografDosyaYolu { get; set; }
    }
}