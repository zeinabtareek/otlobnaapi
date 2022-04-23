import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/model/OrderModel.dart';

import '../../constant/auth_helper.dart';
import '../../constant/constStrings.dart';
import '../../repositories/orders_repo/all_orders_repo.dart';

class AllOrdersAPI extends AllOrdersRepo {
  @override
  Future<PaginatedOrderModel?> getAllOrders(int offset) async {
    PaginatedOrderModel? orders;
    AuthHelper authHelper = AuthHelper();

    try {
      // http.Response response =await http.get(Uri.parse('${ConstStrings.baseURL}${ConstStrings.allOrdersURL}Rt2ep1BnCMKfEy700BG4MWFVE3KxLnCFzVRwycpD7JCCUuhKU3NGsKKvpdYrkt9kss1in22OSeizQV24AknZtV3IeoDniKGNu2RBITwh2YlmkUf9ZMJ0cR6W/1/$offset'));
      http.Response response = await http.get(Uri.parse(
          'https://otlobna-eg.com/api/v1/delivery-man/all-orders/${authHelper.authToken}/20/1'));

      if (response.statusCode == 200) {
        print(response.body);

        orders = PaginatedOrderModel.fromJson(jsonDecode(response.body));
        return orders;
      } else {
        print('****************');
      }
    } catch (e) {
      print(e);
    }
    return orders;
  }
}
