import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/model/order_details_model.dart';
import 'package:otlobnaapi/screen/order_details_screen/order_details_screen.dart';

import '../../../services/orders_apis/all_orders_apis.dart';

class OrderDetailsController extends GetxController {
  final _service = AllOrdersAPI();
  final id = 0.obs;
  final model = <OrderDetailsModel>[].obs;

  @override
  Future<void> onInit() async {
    getOrderDetails();
    model.value = (await _service.getOrderDetails(100023))!;
    print(model[0].discountType);
  }

  OrderDetailsModel? orderDetailsModel;

  getOrderDetails() async {
    // id.value= await CacheHelper.getData(key: 'order_id');
    //  _service.getOrderDetails(100023);
    update();
  }
}
