

import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:otlobnaapi/constant/cache_helper.dart';

import 'package:otlobnaapi/model/order_model.dart';

import '../../constant/auth_helper.dart';
import '../../constant/constStrings.dart';
import '../../repositories/orders_repo/all_orders_repo.dart';

class AllOrdersAPI extends AllOrdersRepo{
  @override
  Future<Orders> getAllOrders(int offset)async {
    Orders orders =Orders();
    AuthHelper authHelper=AuthHelper();

    try{
    // http.Response response =await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.allOrdersURL}Rt2ep1BnCMKfEy700BG4MWFVE3KxLnCFzVRwycpD7JCCUuhKU3NGsKKvpdYrkt9kss1in22OSeizQV24AknZtV3IeoDniKGNu2RBITwh2YlmkUf9ZMJ0cR6W/1/$offset'));
    http.Response response =await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.allOrdersURL}${authHelper.authToken}/1/$offset'));

    if(response.statusCode==200){
      print(response.body);
      var data =jsonDecode(response.body);
      orders= Orders.fromJson(data);
      print('allOrdersModel :${orders.id}');
      print('profiletoken :${authHelper.authToken}');

      return orders;
    }else{
      throw Exception();
    }
  }catch(e){
    print(e);
  }
  return orders;
  }

}