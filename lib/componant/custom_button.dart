import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String? text;
  VoidCallback? onPressed;
  CustomButton({
    Key? key,   this.onPressed, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric
        (horizontal: 20.0.w ,vertical: 2.0.h),
      height: 70.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child:   Text(text!,style: TextStyle(fontSize: 20.sp),),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.orange[700]),

        ),
      ),
    );
  }
}
