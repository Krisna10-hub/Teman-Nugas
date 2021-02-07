class ItemProfile {
  final String id;
  final String name;
  final String image;
  final String jenjang;

  ItemProfile({
    this.id,
    this.name,
    this.image,
    this.jenjang,
  });

  factory ItemProfile.fromJson(Map<String, dynamic> json) {
    return ItemProfile(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      jenjang: json['jenjang'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'jenjang': jenjang,
      };
}
