class ItemKULIAH {
  final String id;
  final String name;
  final String image;
  final String jawaban;

  ItemKULIAH({
    this.id,
    this.name,
    this.image,
    this.jawaban,
  });

  factory ItemKULIAH.fromJson(Map<String, dynamic> json) {
    return ItemKULIAH(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        jawaban: json['jawaban']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'jawaban': jawaban,
      };
}
