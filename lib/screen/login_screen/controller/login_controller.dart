import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';

import '../../../services/loginNumber_apis/login_apis.dart';

class LoginController extends GetxController {

  final _services = LoginApi();
  final email = ''.obs;
  final password = ''.obs;
   bool _isActiveRememberMe = false;

  bool get isActiveRememberMe => _isActiveRememberMe;

  validEmail(String emails) {
    email.value = emails;
    print(email.value);
  }

  validPassword(String pass) {
    password.value = pass;
    print(password.value);
  }
isChecked( ){
  _isActiveRememberMe = !_isActiveRememberMe;
    update();
}
  login() {
    _services.generateToken(email: email.value, password: password.value);
  }
}
