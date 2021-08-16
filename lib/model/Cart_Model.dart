class CartModel {
  final String name;
  final String image;
  final String price;

  CartModel({required this.name, required this.image, required this.price});

  static List<CartModel> cartData = [
    CartModel(
        image: 'images/cart1.png',
        name: "Astylish Women Open Front Long Sleeve Chunky Knit Cardigan",
        price: '\$89.99'),
    CartModel(
        image: 'images/cart2.png',
        name:
            "BORIFLORS Women's Sexy Wrap Front Long Sleeve Ruched Bodycon Mini Club Dress",
        price: '\$149.99'),
  ];
}
