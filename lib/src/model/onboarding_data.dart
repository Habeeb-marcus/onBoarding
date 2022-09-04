class OnboardingData {
  final String imageSrc;
  final String title;
  final String description;

  OnboardingData({
    this.title = '',
    this.description = '',
    this.imageSrc = '',
  });
}

List<OnboardingData> onboardingData = [
  
  OnboardingData(
    title: 'Find Best Musicians All Around Your City',
    description:'Thousands of musicians around you are waiting to rock your event.',
    imageSrc: 'assets/images/onBoard1.png',
  ),
  OnboardingData(
    title: 'Fastest Way To Book Great Musicians',
    description: 'Find the perfect match to perform for your event and make the day remarkable.',
    imageSrc: 'assets/images/onBoard2.png',
  ),
  OnboardingData(
    title: 'Find Top Sessions Pros For Your Event',
    description: 'Find the perfect match to perform for your event and make the day remarkable.',
    imageSrc: 'assets/images/onBoard3.png',
  ),

];
