import 'package:get/get.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/model/OrderModel.dart';
import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';
import 'package:otlobnaapi/services/orders_apis/all_orders_apis.dart';

class OrdersController extends GetxController {
  final _service = AllOrdersAPI();
  PaginatedOrderModel? orders;
  OrderModel? latestOrders;
  OrderModel? orderDeliveryHistory;
  final offset =0.obs;
  final id =0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    getAllOrders();
    getLatestOrders();
    getOrderDeliveryHistory();
  }
  getAllOrders() async {
    orders = await _service.getAllOrders(offset.value);
    CacheHelper.getData(key: 'order_id');
    print(orders!.orders![1].id);
    update();
  }

  getLatestOrders()async{
    latestOrders=await _service.getLatestOrders();
    update();
  }

  getOrderDeliveryHistory()async{
    orderDeliveryHistory=await _service.getOrderDeliveryHistory(id.value);
    update();
  }


}
