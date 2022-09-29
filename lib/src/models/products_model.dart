part of 'models.dart';

class ProductsModels {
  final String productname;
  final String productDesc;
  final String imageUrl;
  final double price;

  ProductsModels(this.productname, this.productDesc, this.imageUrl, this.price);
}

List<ProductsModels> productModels = [
  ProductsModels(
      "iphone 14 pro max",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/1/1.jpg",
      301),
  ProductsModels(
      "Acer",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/2/1.jpg",
      87),
  ProductsModels(
      "Samsung A+",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/5/1.jpg",
      401),
  ProductsModels(
      "HP Laptop",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/4/2.jpg",
      202),
  ProductsModels(
      "Oppo F21",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/4/1.jpg",
      110),
  ProductsModels(
      "Samsung Note",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/8/2.jpg",
      401),
  ProductsModels(
      "Samsung Galaxy",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/6/2.jpg",
      490),
  ProductsModels(
      "lenovo",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/10/2.jpg",
      40),
  ProductsModels(
      "iPhone 12",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "https://dummyjson.com/image/i/products/5/2.jpg",
      40),
];
