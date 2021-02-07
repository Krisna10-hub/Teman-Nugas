class ItemSD {
  final String id;
  final String name;
  final String image;
  final String jawaban;

  ItemSD({
    this.id,
    this.name,
    this.image,
    this.jawaban,
  });

  factory ItemSD.fromJson(Map<String, dynamic> json) {
    return ItemSD(
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
