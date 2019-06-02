class Champion {
  String name, imageLink, avatar;

  Champion(this.name, this.imageLink, this.avatar);

  factory Champion.fromJson(Map<String, dynamic> data) {
    return Champion(
        data["name"],
        data["name"]+"_0.jpg",
        data["image"]["full"]
    );
  }
}

