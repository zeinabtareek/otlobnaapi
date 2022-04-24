
import 'package:get/get.dart';

import '../screen/login_screen/controller/login_controller.dart';
import '../screen/orders_screen/controller/orders_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => OrdersController());



  }
}