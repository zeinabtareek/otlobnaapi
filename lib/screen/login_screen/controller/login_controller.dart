import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';

import '../../../services/loginNumber_apis/login_apis.dart';

class LoginController extends GetxController {
  // LoginApi loginApi=LoginApi();
  // final emailController = TextEditingController();
  // final passController = TextEditingController();
  final _services = LoginServices();
  final email = ''.obs;
  final password = ''.obs;

  validEmail(String emails) {
    email.value = emails;
    print(email.value);
  }

  validPassword(String pass) {
    password.value = pass;
    print(password.value);
  }

  login() {
    _services.login(email.value, password.value);
    // CacheHelper.saveData(key: 'email', value: emailController.text,);
    // CacheHelper.saveData(key: 'password', value: passController.text,);
    // print('${CacheHelper.getData(key: 'password')}');
  }
}
