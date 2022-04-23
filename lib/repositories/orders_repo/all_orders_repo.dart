



import 'package:otlobnaapi/model/OrderModel.dart';

abstract class AllOrdersRepo{
  Future<PaginatedOrderModel?>getAllOrders(int offset);
}