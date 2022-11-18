class MathsRepository {
  int topla(String val1, String val2) {
    int sayi1 = int.parse(val1);
    int sayi2 = int.parse(val2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int carp(String val1, String val2) {
    int sayi1 = int.parse(val1);
    int sayi2 = int.parse(val2);
    int carpma = sayi1 * sayi2;
    return carpma;
  }
}