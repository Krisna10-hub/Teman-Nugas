class ItemSMP {
  final String id;
  final String name;
  final String image;
  final String jawaban;

  ItemSMP({
    this.id,
    this.name,
    this.image,
    this.jawaban,
  });

  factory ItemSMP.fromJson(Map<String, dynamic> json) {
    return ItemSMP(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      jawaban: json['jawaban'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'jawaban': jawaban,
      };
}
