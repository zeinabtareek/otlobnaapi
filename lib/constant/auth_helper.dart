import 'package:otlobnaapi/constant/cache_helper.dart';

class AuthHelper{
  var authToken=CacheHelper.getData(key: 'token');
  var authEmail=CacheHelper.getData(key: 'email', );
  var authPass=CacheHelper.getData(key: 'password',);

}