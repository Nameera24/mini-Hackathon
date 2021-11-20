class Book {
  final int id;
  final String name;
  final String write;
  final String urlimage;
  Book(
      {required this.id,
      required this.name,
      required this.write,
      required this.urlimage});
}

List<Book> sbook = [
  Book(
      id: 1,
      name: "Jeans",
      write: "2 Piece left",
      urlimage: "assets/jeans.jpeg"),
  Book(
      id: 2,
      name: "Shirt",
      write: "5 Piece left",
      urlimage: "assets/shirt.jpeg"),
  Book(
      id: 3,
      name: "Shoes",
      write: "3 Pairs left",
      urlimage: "assets/shoe.jpeg"),
  Book(
      id: 4,
      name: "T Shirt",
      write: "2 Piece left",
      urlimage: "assets/t-shirt.jpeg"),
];

class Book1 {
  final int id;
  final String name;
  final String write;
  final String urlimage;
  Book1(
      {required this.id,
      required this.name,
      required this.write,
      required this.urlimage});
}

List<Book1> sbook1 = [
  Book1(id: 1, name: "Jeans", write: "\$50", urlimage: "assets/pant.jpg"),
  Book1(id: 2, name: "Shirt", write: "\$100", urlimage: "assets/shirt2.jpg"),
  Book1(id: 3, name: "Shoes", write: "\$60", urlimage: "assets/shoe2.jpg"),
];
