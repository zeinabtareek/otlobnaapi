


import '../../model/order_model.dart';

abstract class AllOrdersRepo{
  Future<Orders>getAllOrders(int offset);
}