import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/repositories/profile_repo/controller/profile_controller.dart';
import 'package:otlobnaapi/screen/login_screen/controller/login_controller.dart';

import '../../constant/cache_helper.dart';
import '../../services/Profile_apis/profile_apis.dart';
import '../../services/loginNumber_apis/login_apis.dart';
import '../../services/orders_apis/all_orders_apis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // LoginApi loginApi =LoginApi();
  ProfileAPI profileAPI = ProfileAPI();
  final controller = Get.put(ProfileController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // loginApi.generateToken();
    // print('token :${CacheHelper.getData(key: 'token')}');
    // print('profileapi' + profileAPI.getData().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: TextButton(
            onPressed: () {
              controller.get();
            },
            child: Text('data')),
      ),
    ));
  }
}
