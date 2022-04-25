import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:otlobnaapi/model/OrderModel.dart';
import 'package:otlobnaapi/model/order_details_model.dart';
import '../../constant/auth_helper.dart';
import '../../constant/cache_helper.dart';
import '../../constant/constStrings.dart';
import '../../repositories/orders_repo/all_orders_repo.dart';

class AllOrdersAPI extends AllOrdersRepo {
  AuthHelper authHelper = AuthHelper();
  @override
  Future<PaginatedOrderModel?> getAllOrders(int offset) async {
    PaginatedOrderModel? orders;
    try {http.Response response = await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.allOrdersURL}${authHelper.authToken}/1/$offset'));
      if (response.statusCode == 200) {
        print(response.body);
        orders = PaginatedOrderModel.fromJson(jsonDecode(response.body));
        CacheHelper.saveData(key: 'order_id', value: orders.orders![1].id);

        return orders;}
      else {
        print('*******getAllOrdersError*********');}
    } catch (e) {
      print(e);
    }
    return orders;
  }
  Future<OrderDetailsModel>getOrderDetails(int id)async{
    OrderDetailsModel orderModel=OrderDetailsModel();
    try{
      id=authHelper.orderId;
      http.Response response=await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.orderDetailsURL}${authHelper.authToken}$id'));
      if(response.statusCode==200){
        print(response.body);
        var data=jsonDecode(response.body);
        orderModel=OrderDetailsModel.fromJson(data);
        print(orderModel);
        return orderModel;
      }else{
        print('*******getOrdersDetails*********');
        throw Exception();
       }
      }catch(e){
      print(e);}

   return orderModel;
  }

  @override
  Future<OrderModel> getCurrentOrder() {
     throw UnimplementedError();
  }




  @override
  Future<OrderModel> getLatestOrders() async{
    OrderModel orderModel=OrderModel( );
    try{
      http.Response response=await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.latestOrdersURL}${authHelper.authToken}'));
      if(response.body==200){
        print(response.body);
        var data=jsonDecode(response.body);
        orderModel=await OrderModel.fromJson(data);
        print('grtLatestOrders :==${orderModel.paymentMethod}');
        return orderModel;
      }
    }catch(e){
      print(e);
    }
 return orderModel;
}

  @override
  Future<OrderModel> getOrderDeliveryHistory(int id) async{
    OrderModel orderModel=OrderModel();

    try{
      id=authHelper.orderId;
      http.Response response =await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.orderDeliveryHistory}${authHelper.authToken}$id'));
      if(response.statusCode==200){
        print(response.body);
        var data=jsonDecode(response.body);
        orderModel=await OrderModel.fromJson(data);
        print(orderModel);
        return orderModel;
      }
      else {
        print('*******getOrderDeliveryHistory*********');}

     }catch(e){
      throw Exception();
    }
      return orderModel;
  }
}
