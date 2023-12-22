class Food {
  final String thFood;
  final String enFood;
  final double price;
  final String value;

  Food(
      {required this.thFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(thFood: "แกง", enFood: "fafa", price: 2000, value: "แกง"),
      Food(thFood: "แกงส้ม", enFood: "sada", price: 1200, value: "แกงส้ม"),
      Food(
          thFood: "แกงเขียว", enFood: "krita", price: 15000, value: "แกงเขียว"),
      Food(thFood: "แกงแดง", enFood: "mandss", price: 200000, value: "แกงcf;"),
    ]; //ค่าว่าง
  }
}
