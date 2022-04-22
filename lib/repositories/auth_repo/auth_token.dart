

import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/model/token_model.dart';

import '../../model/order_model.dart';

abstract class LoginNumberRepo{
  Future<TokenModel> generateToken({String? email, String? password});
}