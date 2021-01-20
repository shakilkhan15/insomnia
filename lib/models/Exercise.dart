class Exercise {
  String name;
  String description;
  String video_url;
  String base_img;
  List<String> images;

  Exercise(
      {this.description,
      this.base_img,
      this.name,
      this.images,
      this.video_url});
}

List<Exercise> exercises = [
  Exercise(
      name: "Arabic",
      description: """
  Activities that get your heart rate up, such as running, brisk walking, cycling, and swimming, have been shown to improve sleep and battle insomnia. Even small bouts, such as 10 minutes, may help, though the goal is to get at least 150 minutes of moderate-intensity (or 75 minutes of vigorous-intensity) aerobic exercise each week.

  """,
      images: [
        "assets/images/Picture19.jpg",
        "assets/images/Picture10.jpg",
        "assets/images/Picture11.jpg",
        "assets/images/Picture12.jpg"
      ],
      base_img: "assets/images/Picture13.png",
      video_url:"vG_Bs0QLc3I"),
  Exercise(
      name: "Strength Training",
      description: """
Building muscle has been shown to improve the quality of sleep, and it can also help you fall asleep faster and wake up less frequently throughout the night.  So try doing exercises like shoulder presses, bicep curls, tricep dips, squats, lunges, calf raises, sit-ups, and push-ups that will make you stronger.

  """,
      images: [
        "assets/images/Picture3.jpg",
        "assets/images/Picture4.jpg",
        "assets/images/Picture5.jpg"
      ],
      base_img: "assets/images/Picture14.png",
      video_url:
          "mUns8O4YL5M"),
  Exercise(
      name: "Yoga",
      description: """
Yoga’s relaxing poses and stretches, as well as the calming breathing exercises that accompany them, may be especially helpful if stress is what’s keeping you from falling asleep. Those with insomnia who do yoga daily for eight weeks are likely to fall asleep faster and increase the amount of time that they spend sleeping.

  """,
      images: [
        "assets/images/Picture1.jpg",
        "assets/images/Picture2.jpg",
      ],
      base_img: "assets/images/Picture15.png",
      video_url:
          "v7AYKMP6rOE"),
  Exercise(
      name: "Meditations",
      description: """
Meditation can be a great tool for those looking who are for an all-natural, medication-free way to treat insomnia. In fact, meditation has even been shown to help reduce the use of sleeping pills. The practice likely improves insomnia symptoms by reducing measures of arousal in the brain.oga’s relaxing poses and stretches, as well as the calming breathing exercises that accompany them, may be especially helpful if stress is what’s keeping you from falling asleep. Those with insomnia who do yoga daily for eight weeks are likely to fall asleep faster and increase the amount of time that they spend sleeping.

  """,
      images: [
        "assets/images/Picture6.jpg",
        "assets/images/Picture7.jpg",
      ],
      base_img: "assets/images/Picture16.png",
      video_url:"k0PSUDvLi8E"),
];
