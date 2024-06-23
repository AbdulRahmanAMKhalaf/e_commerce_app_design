class PopularProductModel {
  String headTitle;
  String explain;
  String image;

  PopularProductModel(
      {required this.headTitle, required this.explain, required this.image});
}
List<PopularProductModel>popProductList=[
  PopularProductModel(
      headTitle: 'Smartphone',
      explain: '18 Brands',
      image: 'Assets/Images/1.jpg'),
  PopularProductModel(
      headTitle: 'Fashion',
      explain: '24 Brands',
      image: 'Assets/Images/2.jpg'),
  PopularProductModel(
      headTitle: 'Smartphone',
      explain: '18 Brands',
      image: 'Assets/Images/1.jpg'),
  PopularProductModel(
      headTitle: 'Fashion',
      explain: '24 Brands',
      image: 'Assets/Images/2.jpg'),
];
