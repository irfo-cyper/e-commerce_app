class FavoriteModel {
  final String name;
  final String image;
  final String price;
  final String discountprice;

  FavoriteModel(
      {required this.discountprice,
      required this.price,
      required this.name,
      required this.image});

  static List<FavoriteModel> favorites = [
    FavoriteModel(
        image: 'images/favorite1.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '99',
        discountprice: '49'),
    FavoriteModel(
        image: 'images/favorite2.png',
        name: "Astylish Women Open Front Long Sleeve Ch...",
        price: '89',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite3.png',
        name: "ECOWISH Womens Color Block Striped Draped K...",
        price: '72.33',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite4.png',
        name: "Angashion Women's Sweaters Casual Long...",
        price: '78.98',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite5.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '82.54',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite1.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '99',
        discountprice: '49'),
    FavoriteModel(
        image: 'images/favorite2.png',
        name: "Astylish Women Open Front Long Sleeve Ch...",
        price: '89',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite3.png',
        name: "ECOWISH Womens Color Block Striped Draped K...",
        price: '72.33',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite4.png',
        name: "Angashion Women's Sweaters Casual Long...",
        price: '78.98',
        discountprice: '0'),
    FavoriteModel(
        image: 'images/favorite5.png',
        name: "Saodimallsu Womens Turtleneck Oversized...",
        price: '82.54',
        discountprice: '0'),
  ];
}
