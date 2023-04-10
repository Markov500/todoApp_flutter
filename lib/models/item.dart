class Item {
  int id;
  String texte;
  bool isDone;

  Item({required this.id, required this.texte, this.isDone = false});

  static List<Item> items = [];
}
