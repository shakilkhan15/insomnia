class Sound {
  String name;
  String image_path;
  String audio_url;

  Sound({this.image_path, this.name, this.audio_url});
}

List<Sound> sounds = [
  Sound(
      name: "FOREST",
      audio_url: "assets/sounds/jangle.mp3",
      image_path: "assets/images/Picture27.png"),
  Sound(
      name: "OCEAN",
      audio_url: "assets/sounds/Ocean.mp3",
      image_path: "assets/images/Picture28.png"),
  Sound(
      name: "RAIN",
      audio_url: "assets/sounds/rain-01.mp3",
      image_path: "assets/images/Picture29.png"),
  Sound(
    name: "ANIMAL",
      audio_url: "assets/sounds/animal.mp3",
      image_path: "assets/images/Picture30.png"),
  Sound(
    name: "WIND",
      audio_url: "assets/sounds/wind.mp3",
      image_path: "assets/images/Picture31.png"),
  Sound(
    name: "NIGHT",
      audio_url: "assets/sounds/Night.mp3",
      image_path: "assets/images/Picture32.png"),
  Sound(
    name: "OLD TOWN",
      audio_url: "assets/sounds/oldtown.mp3",
      image_path: "assets/images/Picture33.png"),
];
