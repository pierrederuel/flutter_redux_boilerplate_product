class Product {
  final String name;
  final String id;

  Product(this.name, this.id);

  Map<String, dynamic> toJSON() =>
      <String, dynamic>{'name': this.name, 'id': this.id};

  factory Product.fromJSON(Map<String, dynamic> json) => new Product(
        json['name'],
        json['id'],
      );

  Product copyWith({String name, String id}) {
    return new Product(
      name ?? this.name,
      id ?? this.id,
    );
  }

  @override
  String toString() {
    return '{name: $name, id: $id}';
  }
}
