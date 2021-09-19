import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:ui_design/Buyer/models/itemModel.dart';

final cartNotifier = ChangeNotifierProvider<MyStore>((_) => MyStore());

class MyStore extends ChangeNotifier {
  List<Product> productItem = [];
  List<Product> basketItem = [];

  // ignore: avoid_init_to_null

 late double totalCartValue ;

  MyStore() {
    //set up data
    productItem = products;
    //send notification to provider
    notifyListeners();
  }

  List<Product> get products => productItem;

  double get totalCartCount => getBasketTotalPrice();

  List<Product> get basket => basketItem;

  // Product get activeProducts => activeProductItem;
  //
  // setActiveProduct(Product p) {
  //   activeProductItem = p;
  // }

//add ot remove any object in basket
  addOneItemIntoBasket(Product p) {
    print('jj');
    Product? found =
        basketItem.firstWhereOrNull((element) => element.slug == p.slug);

    if (found != null) {
      found.qty += 1;
      print('item added');
    } else {
      basketItem.add(p);
    //  calculateTotal();
    }
    notifyListeners();
  } //ef

//add ot remove any object in basket
  removeOneItemIntoBasket(Product p) {
    Product? found =
        basketItem.firstWhereOrNull((element) => element.slug == p.slug);

    if (found != null && found.qty == 1) {
      basketItem.remove(p);
      print('item removeded');
    } else {
      found!.qty -= 1;
    }

    notifyListeners();
  } //ef

  getBasketQty() {
    int total = 0;
    for (int i = 0; i < basketItem.length; i++) {
      total += basketItem[i].qty;
    }
    notifyListeners();
    return total;
  }
//add multiple qty at a time any object in basket
  addMultipleItemIntoBasket(Product p, int initialQty) {
    Product? found = basketItem.firstWhereOrNull((element) => element.slug == p.slug);

    if (found != null) {
      // if(found.qty >= initialQty){
      //   found.qty = found.maxOrderableQty;
      // }
      // else {
        found.qty += initialQty;
     // }

    } else {
      p.qty = initialQty;
      basketItem.add(p);
    }

    notifyListeners();
  }
  // void toggleDone() {
  //   activeProductItem.qty++;
  // }

  // void decreaseDown() {
  //   activeProductItem.qty == 0 ? 0 : activeProductItem.qty--;
  // }

  // void updateTask(Product task) {
  //   task.toggleDone();
  //   notifyListeners();
  // }

  // // void removeCard(Product task) {
  // //   _addNewData.remove(task);
  // //   notifyListeners();
  // // }

  // void decrease(Product task) {
  //   if (task.qty == 1) {
  //     // removeCard(task);
  //     basketItem.remove(task);
  //   }
  //   task.decreaseDown();
  //   notifyListeners();
  // }

 double getBasketTotalPrice() {
    double total = 0;
    for (int i = 0; i < basketItem.length; i++) {
      total += basketItem[i].price * basketItem[i].qty;
    }
    notifyListeners();
    return total;
  }
}
