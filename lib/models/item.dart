class Item {
  int id;
  String texte;
  bool isDone;

  Item({required this.id, required this.texte, this.isDone = false});

  static List<Item> items = [
    Item(id: 1, texte: "Ananas"),
    Item(id: 2, texte: "Banane", isDone: true),
    Item(id: 3, texte: "Orange")
  ];
}
