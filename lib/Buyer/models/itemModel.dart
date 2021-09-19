class Product {
  Product(
      {required this.image,
      required this.price,
      required this.productName,
       this.qty = 1,
      required this.slug});

  final String image;
  final String productName;
  final double price;
   int qty;
  final String slug;
}

List<Product> products = [
  Product(
      image: 'assets/product/bag.webp',
      price: 2,
      productName: 'Bag',
      qty: 1,
      slug: 'bag_same'),
  Product(
      image: 'assets/product/camera.webp',
      price: 4,
      productName: 'Camera',
      qty: 1,
      slug: 'camera'),
  Product(
      image: 'assets/product/handphone.jpg',
      qty: 1,
      slug: 'handephone-same',
      price: 1,
      productName: 'Head Phone'),
  Product(
      image: 'assets/product/red_label.jpg',
      price: 9,
      qty: 1,
      slug: 'red-level',
      productName: 'Red Label'),
  Product(
      image: 'assets/product/sunglass.webp',
      price: 5,
      qty: 1,
      slug: 'sunglass-sam',
      productName: 'Sun Glass'),
  Product(
      image: 'assets/product/oil.jpg',
      price: 3,
      productName: 'Oil',
      qty: 1,
      slug: 'oil-same'),
  Product(
      image: 'assets/product/nike_shoe.jpg',
      price: 4,
      qty: 1,
      slug: 'nike-shoe',
      productName: 'Nike Shoe'),
];
