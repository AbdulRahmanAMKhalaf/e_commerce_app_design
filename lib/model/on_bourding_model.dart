class OnBourdingModel{
  final String image;
  final String text;
  final String title;

  const OnBourdingModel({required this.title,required this.image,required this.text});
}
List<OnBourdingModel>bourdingList=[
  const OnBourdingModel(
      image: 'Assets/Images/3.jpg',
      text: 'you can find everything you need in one place. Whether you’re looking for clothes, electronics, groceries, or anything else, this app has it all.',
      title: 'All-in-One:Everything at Your Fingertips'
  ),
  const OnBourdingModel(
      image: 'Assets/Images/4.jpg',
      text: 'Use reputable and secure payment gateways to process transactions,this helps protect financial information and reduces the risk of fraud.',
      title:'TrustGuard:Secure Shopping'
  ),
  const OnBourdingModel(
      image: 'Assets/Images/5.jpg',
      text: 'Enjoy the convenience of shopping whenever and wherever you want.Allowing you to browse and purchase products effortlessly from your device.',
      title: 'Anytime, Anywhere:Shop with Ease'
  ),

];