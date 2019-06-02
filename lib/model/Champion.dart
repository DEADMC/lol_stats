class Champion {
  String name, imageLink, avatar;

  Champion(this.name, this.imageLink, this.avatar);

  factory Champion.fromJson(Map<String, dynamic> data) {
    return Champion(
        data["name"],
        data["image"]["full"],
        data["image"]["full"]
    );
  }
}

