class Products {
  final String name;
  final String image;
  final double rating;
  final double price;
  final String vendor;
  final bool wishList;

  Products(
      {this.name,
      this.image,
      this.price,
      this.rating,
      this.vendor,
      this.wishList});
}

final productsList = <Products>[
  Products(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: "1.jpg"),
  Products(
      name: "Rolls",
      price: 6.99,
      rating: 3.2,
      vendor: "Ribs 'n Burger",
      wishList: false,
      image: "2.jpeg"),
  Products(
      name: "Kattie Rolls",
      price: 3.99,
      rating: 5.0,
      vendor: "Peacock",
      wishList: true,
      image: "3.jpeg"),
  Products(
      name: "Tacos",
      price: 1.99,
      rating: 2.2,
      vendor: "Moose",
      wishList: true,
      image: "4.jpg"),
  Products(
      name: "Salad",
      price: 2.99,
      rating: 1.2,
      vendor: "Dienty",
      wishList: false,
      image: "5.jpg")
];
