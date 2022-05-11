import 'package:shop/constants.dart';

class ProductModel {
  final String image, brandName, title;
  final double price;
  final double? priceAfetDiscount;
  final int? dicountpercent;

  ProductModel({
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    this.priceAfetDiscount,
    this.dicountpercent,
  });
}

List<ProductModel> popularProducts = [
  ProductModel(
    image: productImg1,
    title: "Double Hamburger",
    brandName: "Burger King",
    price: 50,
    priceAfetDiscount: 40,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg4,
    title: "Rice with Vegetables",
    brandName: "WAW'S Restaurant",
    price: 35,
  ),
  ProductModel(
    image: productImg5,
    title: "Vegan Broccoli\nMenu",
    brandName: "Vegans Kitchen",
    price: 100,
    priceAfetDiscount: 80,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg6,
    title: "Pizza Special Menu",
    brandName: "Pizzeria Frida Palermo",
    price: 80,
  ),
  ProductModel(
      image: productImg7,
      title: "Strawberry\nCake",
      brandName: "London Cake",
      price: 50,
      priceAfetDiscount: 45,
      dicountpercent: 10),
  ProductModel(
    image: productImg8,
    title: "Chocolate Croissant",
    brandName: "RALPH BAKERY",
    price: 38,
  ),
];
List<ProductModel> flashSaleProducts = [
  ProductModel(
    image: productImg1,
    title: "Double Hamburger",
    brandName: "Burger King",
    price: 50,
    priceAfetDiscount: 40,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg5,
    title: "Vegan Broccoli\nMenu",
    brandName: "Vegans Kitchen",
    price: 100,
    priceAfetDiscount: 80,
    dicountpercent: 20,
  ),
  ProductModel(
    image: productImg7,
    title: "Strawberry\nCake",
    brandName: "London Cake",
    price: 50,
    priceAfetDiscount: 45,
    dicountpercent: 10,
  ),
];
List<ProductModel> bestSellersProducts = [
  ProductModel(
    image: "https://i.imgur.com/tXyOMMG.png",
    title: "Green Poplin Ruched Front",
    brandName: "Lipsy london",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
  ),
  ProductModel(
    image: "https://i.imgur.com/h2LqppX.png",
    title: "white satin corset top",
    brandName: "Lipsy london",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
  ),
  ProductModel(
    image: productImg4,
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 800,
    priceAfetDiscount: 680,
    dicountpercent: 15,
  ),
];
List<ProductModel> kidsProducts = [
  ProductModel(
    image: "https://i.imgur.com/dbbT6PA.png",
    title: "Green Poplin Ruched Front",
    brandName: "Lipsy london",
    price: 650.62,
    priceAfetDiscount: 590.36,
    dicountpercent: 24,
  ),
  ProductModel(
    image: "https://i.imgur.com/7fSxC7k.png",
    title: "Printed Sleeveless Tiered Swing Dress",
    brandName: "Lipsy london",
    price: 650.62,
  ),
  ProductModel(
    image: "https://i.imgur.com/pXnYE9Q.png",
    title: "Ruffle-Sleeve Ponte-Knit Sheath ",
    brandName: "Lipsy london",
    price: 400,
  ),
  ProductModel(
    image: "https://i.imgur.com/V1MXgfa.png",
    title: "Green Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 400,
    priceAfetDiscount: 360,
    dicountpercent: 20,
  ),
  ProductModel(
    image: "https://i.imgur.com/8gvE5Ss.png",
    title: "Printed Sleeveless Tiered Swing Dress",
    brandName: "Lipsy london",
    price: 654,
  ),
  ProductModel(
    image: "https://i.imgur.com/cBvB5YB.png",
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 250,
  ),
];
