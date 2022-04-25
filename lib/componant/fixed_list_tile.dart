 import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 class AddressTextField extends StatelessWidget {
   final String label;
   final String hint;
   final bool ?map;
   const AddressTextField({
     Key? key,required this.label, this.map,required this.hint
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: 400.w,
            height: 50.h,
            child:TextField(
              cursorHeight: 30,
              // onChanged:(){},
              cursorColor: Colors.black,
              decoration: InputDecoration(
                isDense: true,
                contentPadding:EdgeInsets.symmetric
                  (horizontal: 20.0.w ,vertical: 30.0.h),
                hintText: hint,
                labelText: label,
                hintStyle: TextStyle(color:Colors.grey,fontSize: 14.sp),
                labelStyle: TextStyle(color:Colors.black,fontSize: 14.sp),
                fillColor: Colors.grey.withOpacity(.15),
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none
                  // borderSide: BorderSide(color: K.grayColor,
                ),
              ),
            )
        )

    );
  }
}
