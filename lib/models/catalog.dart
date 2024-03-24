class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgUrl;

  Item({this.id, this.name, this.desc, this.price, this.color, this.imgUrl});
}

final products = [
  Item(
      id: "Ahsan Khan",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "33505a",
      imgUrl:
          "https://m-cdn.phonearena.com/images/phones/80751-940/Apple-iPhone-12-Pro.jpg?w=1")
];
