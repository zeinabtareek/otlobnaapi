import 'package:otlobnaapi/model/OrderModel.dart';

import '../../model/order_details_model.dart';

abstract class AllOrdersRepo {
  Future<PaginatedOrderModel?> getAllOrders(int offset);

  Future<List<OrderDetailsModel>?> getOrderDetails(int id);

  Future<OrderModel> getCurrentOrder();

  Future<OrderModel> getLatestOrders();

  Future<OrderModel> getOrderDeliveryHistory(int id);
}
