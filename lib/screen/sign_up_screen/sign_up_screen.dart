import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/custom_button.dart';
import '../../componant/fixed_list_tile.dart';
import '../../constant/constStrings.dart';
import '../../utils/styles.dart';
import 'controller/sign_up_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => print('TAPPED!'),
            child: Image.asset(
              "assets/image/logo_removed_background.png",
            ),
          ),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.orange[700],
        title: Text('Otlobna'),
        actions: [
          ConstStrings.sizedBoxW,
          Icon(Icons.menu),
          ConstStrings.sizedBoxW,
        ],
      ),
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
              child:Column(
                children: [
                Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric
                  (horizontal: 2.0.w ,vertical: 20.0.h),
                padding: EdgeInsets.symmetric
                  (horizontal: 2.0.w ,vertical: 20.0.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConstStrings.sizedBoxH,
                    ConstStrings.sizedBoxH,
                    ConstStrings.sizedBoxH,
                    SizedBox(
                      width: 250.w,
                      child: Text('deliveryman Application'.tr.toUpperCase(),
                          style: robotoBlack.copyWith(fontSize: 30.sp)),
                    ),
                    ConstStrings.sizedBoxH,
                    Divider(),
                    ListView.builder(
                        itemCount: controller.labels.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        // physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0.w, vertical: 2.0.h),
                        itemBuilder: (ctx, index) => Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.0.w, vertical: 20.0.h),
                            child: AddressTextField(
                              label: controller.labels[index],
                              hint: index != 7 ? controller.hints[index] : '',
                            ))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Identity Image',
                            style: robotoMedium.copyWith(fontSize: 15.sp)),
                        ConstStrings.sizedBoxH,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DottedBorder(
                              child: Image.network(
                                'https://static.thenounproject.com/png/558642-200.png',
                                width: 200.w,
                                fit: BoxFit.contain,
                              ),
                              borderType: BorderType.Rect,
                              dashPattern: [10, 5, 10, 5, 10, 5], //optional
                            ),
                          ],
                        )
                      ],
                    ),
                    ConstStrings.sizedBoxH,
                    Text('Delivery Man Image',
                        style: robotoMedium.copyWith(fontSize: 20.sp)),
                    ConstStrings.sizedBoxH,
                    ConstStrings.sizedBoxH,
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 2.0.h),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            color: Colors.grey[300],
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0.w, vertical: 10.0.h),
                            width: MediaQuery.of(context).size.width / 3,
                            child: Text('Choose File'),
                          ),
                          Container(
                            height: 50.h,
                            margin: EdgeInsets.symmetric(
                                horizontal: 0.0.w, vertical: 2.0.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0.w, vertical: 10.0.h),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text('Choose File'),
                          ),
                        ],
                      ),
                    ),
                    ConstStrings.sizedBoxH,
                    CustomButton(
                      onPressed: () {},
                      text: 'Submit',
                    ),
                  ],
                ),
              ),
                  /*************Footer**********************/
                Container(
                  width: MediaQuery.of(context).size.width,
                   color: Colors.orange[700],
                  padding: EdgeInsets.symmetric
                    (horizontal: 20.0.w ,vertical: 20.0.h),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstStrings.sizedBoxH,
                      ConstStrings.sizedBoxH,
                      Image.asset(
                        "assets/image/logo_removed_background.png",
                        width: 100.w,
                        height: 100.h,
                        fit: BoxFit.cover,
                      ),

                      ConstStrings.sizedBoxH,
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.sp,
                          height: 1.5
                        ),
                      ),
                      ConstStrings.sizedBoxH,
                      Text('Contact Us ',
                         style: TextStyle(
                          color: Colors.white ,
                          fontSize: 25.sp,
                          height: 1.5
                        ),
                      ),
                ConstStrings.sizedBoxH,
                      Text('About Us',
                         style: TextStyle(
                          color: Colors.white ,
                          fontSize: 20.sp,
                          height: 1.5
                        ),
                      ),
                ConstStrings.sizedBoxH,
                      

                    ],
                  ),
                )
                ],
              ),

        ),
        ),
      ),
    );
  }
}
