class CatalogueModel {
  final String name;
  final String image;

  CatalogueModel({required this.name, required this.image});

  static List<CatalogueModel> catalogue = [
    CatalogueModel(
      image: 'images/catalogue1.png',
      name: "Women's Fashion",
    ),
    CatalogueModel(
      image: 'images/catalogue2.png',
      name: "Men's Fashion",
    ),
    CatalogueModel(
      image: 'images/catalogue3.png',
      name: "Phones",
    ),
    CatalogueModel(
      image: 'images/catalogue4.png',
      name: "Electronics",
    ),
    CatalogueModel(
      image: 'images/catalogue5.png',
      name: "Smart Home",
    ),
    CatalogueModel(
      image: 'images/catalogue6.png',
      name: "Arts & Culture",
    ),
    CatalogueModel(
      image: 'images/catalogue7.png',
      name: "Baby",
    ),
    CatalogueModel(
      image: 'images/catalogue8.png',
      name: "Sports",
    ),
  ];
}
