class Burclar{
  String resim;
  String tarih_araligi;
  String burc_adi;
  String ozellikler;
  String uyumlar;

  Burclar({this.resim, this.tarih_araligi, this.burc_adi, this.ozellikler, this.uyumlar});
}
List<Burclar> burclarim = [
  Burclar(resim: "assets/images/elle_akrep.jpg",burc_adi: "Terazi",tarih_araligi: "eylül-ekim",ozellikler: "Dengeli",uyumlar: "boğa-ikizler"),
  Burclar(resim: "assets/images/elle_balik.jpg",burc_adi: "Oğlak",tarih_araligi: "aralık-ocak",ozellikler: "Politik",uyumlar: "başak-yengeç"),
  Burclar(resim: "assets/images/elle_ikizler.jpg",burc_adi: "Akrep",tarih_araligi: "ekim-kasım",ozellikler: "Sinsi",uyumlar: "yay-ikizle"),
  Burclar(resim: "assets/images/elle_oglak.jpg",burc_adi: "Balık",tarih_araligi: "şubat-mart",ozellikler: "Duygusal",uyumlar: "yengeç-aslan"),
  Burclar(resim: "assets/images/elle_terazi.jpg",burc_adi: "ikizler",tarih_araligi: "mayıs-haziran",ozellikler: "ikiyüzlü",uyumlar: "terazi-başak"),
];
