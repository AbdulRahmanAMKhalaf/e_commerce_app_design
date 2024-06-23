class CategoryModel {
  String image;
  String name;

  CategoryModel({required this.image,required this.name});
}
List<CategoryModel>categoryList=[
  CategoryModel(
      image:'Assets/Images/flash.png' ,
      name: 'Flash Deal'),
  CategoryModel(
      image: 'Assets/Images/bill.png',
      name: 'Bill'),
  CategoryModel(
      image: 'Assets/Images/console.png',
      name: 'Games'),
  CategoryModel(
      image: 'Assets/Images/gift.png',
      name: 'Daily Gift'),
  CategoryModel(
      image: 'Assets/Images/compass.png',
      name: 'More')
];