class Product {
  Product(
      {required this.image, required this.price, required this.productName});

  String image;
  String productName;
  double price;
}


List<Product> products = [
  Product(image: 'assets/product/bag.webp', price: 230, productName: 'Bag'),
  Product(
      image: 'assets/product/camera.webp', price: 400, productName: 'Camera'),
  Product(
      image: 'assets/product/handphone.jpg',
      price: 110,
      productName: 'Head Phone'),

  Product(
      image: 'assets/product/red_label.jpg',
      price: 900,
      productName: 'Red Label'),
  Product(
      image: 'assets/product/sunglass.webp',
      price: 550,
      productName: 'Sun Glass'),
  Product(image: 'assets/product/oil.jpg', price: 330, productName: 'Oil'),
  Product(
      image: 'assets/product/nike_shoe.jpg',
      price: 430,
      productName: 'Nike Shoe'),
];