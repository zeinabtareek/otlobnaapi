
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otlobnaapi/screen/login_screen/controller/login_controller.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';

  import '../../componant/auth_componant/custom_text_field.dart';
import '../../componant/custom_button.dart';
import '../../services/loginNumber_apis/login_apis.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../home_screen/home_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
// LoginController controller=LoginController();

LoginApi loginApi=LoginApi();
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
                child: GetBuilder<LoginController>(
                    init:LoginController(),
                    builder: (controller) {
                    return  Column(
                    children: [
                      Image.asset(Images.logo, width: 140.w),
                      const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                      Text('sign in'.tr.toUpperCase(), style: robotoBlack.copyWith(fontSize: 30.sp)),
                      SizedBox(height: 50.h),
                      Container(
                        margin: EdgeInsets.symmetric
                          (horizontal: 10.0.w ,vertical: 2.0.h),
                        padding: EdgeInsets.symmetric
                          (horizontal: 10.0.w ,vertical:10.0.h),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 5),
                            ]),
                        child: Column(children: [

                          CustomTextField(
                            hintText: 'email'.tr,
                            inputAction: TextInputAction.done,
                            inputType: TextInputType.emailAddress,
                            prefixIcon: Images.mail,
                            isPassword: false,
                              onChanged: (v) {
                                print(v);
                                controller.validEmail(v);
                                print(controller.password.value);
                              },
                          ),CustomTextField(
                            hintText: 'password'.tr,
                            inputAction: TextInputAction.done,
                            inputType: TextInputType.visiblePassword,
                            prefixIcon: Images.lock,
                            isPassword: true,
                              onChanged: (v) {
                                print(v);
                                controller.validPassword(v);
                                print(controller.password.value);
                              },
                          ),
                        ]),
                      ),
                      const SizedBox(height: 10),
                      Row(children: [
                        Expanded(
                          child: ListTile(
                            onTap: () =>controller.isChecked(),
                            leading: Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                              value: controller.isActiveRememberMe,
                              onChanged:  ( bool ?isChecked) => controller.isChecked(),),
                              title: Text('remember me'.tr),
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            horizontalTitleGap: 0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('${'forgot_password'.tr}?',style: TextStyle(
                            color: Colors.orange[700]
                          ),),
                        ),
                      ]),
                      const SizedBox(height: 50),
                    CustomButton(
                      onPressed:(){
                        controller.login();},
                      text:'Log in',

                    ),

                      Center(child:InkWell(
                      onTap: ()=>Get.to(SignupScreen()) ,

                      child:Text('sign up as a Delivery'),),
                      )
                    ],
                  );}
                  ),
                ),
              ),
            ),
          ),
        ),


    ));
  }
}

