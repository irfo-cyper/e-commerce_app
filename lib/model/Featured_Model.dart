class FeaturedModel {
  final String name;
  final String image;
  final String price;
  final String id;
  final String discountprice;
  final String quantity;
  final int stock;

  FeaturedModel(
      {required this.discountprice,
      required this.id,
      required this.stock,
      required this.price,
      required this.name,
      required this.quantity,
      required this.image});

  static List<FeaturedModel> featured = [
    FeaturedModel(
        stock: 10,
        id: '1',
        quantity: '1',
        image: 'images/featured1.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '99',
        discountprice: '49'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '2',
        image: 'images/featured2.png',
        name: "Astylish Women Open Front Long Sleeve Ch...",
        price: '100',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '3',
        image: 'images/featured3.png',
        name: "ECOWISH Womens Color Block Striped Draped K...",
        price: '102.33',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        image: 'images/featured4.png',
        id: '4',
        name: "Angashion Women's Sweaters Casual Long...",
        price: '132.98',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '5',
        image: 'images/featured1.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '99',
        discountprice: '49'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '6',
        image: 'images/featured2.png',
        name: "Astylish Women Open Front Long Sleeve Ch...",
        price: '89',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '7',
        image: 'images/featured3.png',
        name: "ECOWISH Womens Color Block Striped Draped K...",
        price: '102.33',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '8',
        image: 'images/featured4.png',
        name: "Angashion Women's Sweaters Casual Long...",
        price: '132.98',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '9',
        image: 'images/featured1.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '99',
        discountprice: '49'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '10',
        image: 'images/featured2.png',
        name: "Astylish Women Open Front Long Sleeve Ch...",
        price: '89',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '11',
        image: 'images/featured3.png',
        name: "ECOWISH Womens Color Block Striped Draped K...",
        price: '102.33',
        discountprice: '0'),
    FeaturedModel(
        stock: 10,
        quantity: '1',
        id: '12',
        image: 'images/featured4.png',
        name: "Angashion Women's Sweaters Casual Long...",
        price: '132.98',
        discountprice: '0'),
  ];
}
