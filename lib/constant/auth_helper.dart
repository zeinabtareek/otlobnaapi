import 'package:otlobnaapi/constant/cache_helper.dart';

class AuthHelper{
  var authToken=CacheHelper.getData(key: 'token');
  var orderId=CacheHelper.getData(key: 'order_id');

}