
import 'package:get/get.dart';

import '../screen/login_screen/controller/login_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => LoginController());



  }
}