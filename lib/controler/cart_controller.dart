import 'package:get/get.dart';
import 'package:simple_cart_getx_app/model/populer.dart';


class CartController extends GetxController{
  var cartItems=<GroceryMostPopularAll>[].obs;
  int get count=>cartItems.length;
  double get totalPrice=>cartItems.fold(0, (sum,item) => sum + double.tryParse(item.sellingPrice!)!);

  addToCart(GroceryMostPopularAll product){
    cartItems.add(product);
  }
}
