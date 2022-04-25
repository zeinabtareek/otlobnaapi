

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';

import '../../../model/order_details_model.dart';
import '../../../services/orders_apis/all_orders_apis.dart';

class OrderDetailsController extends GetxController {
  final _service = AllOrdersAPI();
  final id=0.obs;
  List<OrderDetailsModel> ?get listOrderDetailsModel => _listOrderDetailsModel;
  List<OrderDetailsModel>? _listOrderDetailsModel;
  final boardController = PageController();

  @override
  void onInit() {
    getOrderDetails();
  }
  OrderDetailsModel? orderDetailsModel ;
    getOrderDetails()async{
      id.value= await CacheHelper.getData(key: 'order_id');
      orderDetailsModel=await _service.getOrderDetails(id.value);
      print('%%%%%%%%%${orderDetailsModel} ${id.value}');
      update();
    }

 }