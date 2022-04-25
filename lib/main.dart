import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/screen/login_screen/login_screen.dart';
import 'package:otlobnaapi/screen/order_details_screen/order_details_screen.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';
import 'package:otlobnaapi/services/loginNumber_apis/login_apis.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    MediaQuery(
        data: const MediaQueryData(
    ),
    child:ScreenUtilInit(
    designSize: const Size (428,926),
    builder :(BuildContext c)=> GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignInScreen(),

      ),
      )
    );

  }
}


