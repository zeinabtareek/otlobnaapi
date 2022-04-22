import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/screen/login_screen/controller/login_controller.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';

import '../../componant/auth_componant/custom_text_field.dart';
import '../../services/loginNumber_apis/login_apis.dart';
import '../../utils/images.dart';
import '../home_screen/home_screen.dart';

class SignInScreen extends StatelessWidget {
LoginController controller=LoginController();

// LoginApi loginApi=LoginApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 2.0.h),
            child:Center(
              child: SizedBox(
                width: 1170.w,
                child: Column(
                    children: [
                      Image.asset(Images.logo, width: 100),
                      const SizedBox(height: 50),
                      Text(
                        'sign in'.tr.toUpperCase(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 5),
                            ]),
                        child: Column(children: [
                          Row(children: [
                //             Expanded(
                //                 child: CustomTextField(
                //               hintText: 'email'.tr,
                //               controller: emailController,
                //               onChanged: (v) {
                //                 controller.validEmail(v);
                //               },
                //               inputType: TextInputType.emailAddress,
                //               divider: false,
                //
                // ),
                // ),
                          ]),

                        // CustomTextField(
                        //     hintText: 'password'.tr,
                        //     inputAction: TextInputAction.done,
                        //     inputType: TextInputType.visiblePassword,
                        //     prefixIcon: Images.lock,
                        //     controller: passController,
                        //     onChanged: (v) {
                        //       print(v);
                        //       controller.validPassword(v);
                        //     },
                        //     isPassword: true,
                        //   ),
                          TextField(
                            // controller: controller.emailController,
                            onChanged: (v){
                              print(v);
                              controller.validEmail(v);
                              print(controller.password.value);
                            },

                          ),
                  TextField(
                    // controller: controller.passController,
                            onChanged: (v){
                           //   print(v);
                              controller.validPassword(v);
                              print(controller.password.value);
                            },
                          )

                        ]),
                      ),
                      const SizedBox(height: 10),
                      Row(children: [
                        Expanded(
                          child: ListTile(
                            onTap: () {},
                            leading: Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                value: true,
                                onChanged: (bool? value) {}),
                            title: Text('remember_me'.tr),
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            horizontalTitleGap: 0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('${'forgot_password'.tr}?'),
                        ),
                      ]),
                      const SizedBox(height: 50),
                      TextButton(
                          child: Text('sign_in'.tr),
                          onPressed: () {
                             Get.to(HomeScreen());
                            // ProfileAPI().getData();
                           // loginApi.Login( controller.emailController.text, controller.passController.text);
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),


    ));
  }
}
