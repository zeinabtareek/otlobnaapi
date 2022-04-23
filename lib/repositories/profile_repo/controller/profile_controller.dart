import 'package:get/get.dart';
import 'package:otlobnaapi/model/OrderModel.dart';
import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';
import 'package:otlobnaapi/services/orders_apis/all_orders_apis.dart';

class ProfileController extends GetxController {
  final _services = ProfileAPI();
  final _service = AllOrdersAPI();

  ProfileModel? profileModel;
  PaginatedOrderModel? orders;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    profileModel = await _services.getData();
    get();
  }

  get() async {
    orders = await _service.getAllOrders(2);
    print(orders!.orders![1].id);
  }
}
