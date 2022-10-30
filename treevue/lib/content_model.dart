class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Did you know?',
      image: 'images/Onboarding1.png',
      discription: "Trees help reduce heating and cooling costs, "
          "absorb stormwater runoff, filter pollutants out"
          "of the air, capture carbon, help with mental health"
          " and beautify neighborhoods."),
  UnbordingContent(
      title: 'Why should you care?',
      image: 'images/Onboarding2.png',
      discription: "Tree Canopy loss effects you more than you may know."
          "Without trees not only does the temprature increase,"
          " so does your electricity bill! Pollution is also drastically "
          "impacted as trees regulate water and improve water quality."),
  UnbordingContent(
      title: 'What\'s TreeVue?',
      image: 'images/Onboarding3.png',
      discription: "Your one stop app to planting trees FOR FREE! "
          "Contribute to planting trees while gaining discounts "
          "on eco-friendly products and more!"),
];
