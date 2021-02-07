class ItemSMASMK {
  final String id;
  final String name;
  final String image;
  final String jawaban;

  ItemSMASMK({
    this.id,
    this.name,
    this.image,
    this.jawaban,
  });

  factory ItemSMASMK.fromJson(Map<String, dynamic> json) {
    return ItemSMASMK(
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
