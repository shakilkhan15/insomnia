class Exercise {
  String name;
  String description;
  String video_url;
  List<String> images;

  Exercise({this.description, this.name, this.images, this.video_url});
}

List<Exercise> exercises = [
  Exercise(
    name: "Arabic",
    description: """
  Activities that get your heart rate up, such as running, brisk walking, cycling, and swimming, have been shown to improve sleep and battle insomnia. Even small bouts, such as 10 minutes, may help, though the goal is to get at least 150 minutes of moderate-intensity (or 75 minutes of vigorous-intensity) aerobic exercise each week.

  """,
    images: [
      "assets/images/Pictuer9.jpg",
      "assets/images/Pictuer10.jpg",
      "assets/images/Pictuer11.jpg",
      "assets/images/Pictuer12.jpg"
    ],

  )

];
