

class OnBoardingEntity{
  final String? image;
  final String? title;
  final String? description;
  OnBoardingEntity({this.image,this.title,this.description});

  static List<OnBoardingEntity> onBoardData = [
    OnBoardingEntity(
      image: 'onboarding_1.png',
      title: 'On damand & runtime\nlocation',
      description: "Pick form your location at\nyour prefered data\nand time"
    ),
    OnBoardingEntity(
      image: "onboarding_2.png",
      title: "Anything,anytime\nanywhere",
      description: "Where its a parcel,a cheque or\nan"
    ),
    OnBoardingEntity(
        image: "onboarding_3.png",
        title: "Live track\nyour shipments",
        description: "See a realTime view of your couier\non the map on the day of delivery"
    ),
  ];
}