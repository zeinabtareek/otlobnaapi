//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:otlobnaapi/model/order_details_model.dart';
//
// import '../../componant/custom_app_bar.dart';
//   import '../../model/OrderModel.dart';
// import '../../utils/dimensions.dart';
// import '../../utils/images.dart';
// import '../../utils/styles.dart';
// import 'controller/order_details_controller.dart';
//
// class OrderDetailsScreen extends StatelessWidget {
//     OrderModel orderModel=OrderModel( );
//
//   @override
//   Widget build(BuildContext context) {
//     final _controller = Get.put(OrderDetailsController());
//
//     return Scaffold(
//       backgroundColor: Theme.of(context).cardColor,
//       appBar: CustomAppBar(title: 'order_details'.tr),
//       body: Padding(
//         padding: EdgeInsets.symmetric
//           (horizontal: 10.0.w ,vertical: 10.0.h),
//         child:
//               Container(
//                 height:MediaQuery.of(context).size.height,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         width: double.infinity,
//                         height: MediaQuery.of(context).size.height / 1.5,
//                         child: Stack(
//                           children: [
//                             PageView.builder(
//                               controller: _controller.boardController,
//                               physics: const BouncingScrollPhysics(),
//                               itemBuilder: (context, index) => LoadImage(
//                                 image: productModel!.images![index] == 0
//                                     ? productModel!.image![index]
//                                     : productModel!.images![index],
//                               ),
//                               itemCount: productModel!.images!.length == 0
//                                   ? productModel!.image!.length
//                                   : productModel!.images!.length,
//                               onPageChanged: (int index) {
//                                 _controller.isFirstFunction(index);
//                                 _controller.isLastFunction(index);
//                               },
//                             ),
//                             Indicator(
//                               pageController: _controller.boardController,
//                               count: productModel!.images!.length == 0
//                                   ? productModel!.image!.length
//                                   : productModel!.images!.length,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.0.h),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       productModel!.name!,
//                                       style: TextStyle(
//                                         fontSize: 20.sp,
//                                         color: K.blackColor,
//                                         fontFamily: "Poppins-Bold",
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 6.w,
//                                     ),
//                                     const Icon(
//                                       Icons.star,
//                                       color: Colors.amber,
//                                     ),
//                                     Text(productModel!.rate!.toString(),
//                                         style:
//                                         TextStyle(color: Colors.black.withOpacity(.6))),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         Share.share(
//                                             'check out my website https://example.com');
//                                       },
//                                       icon: const Icon(
//                                         Icons.share,
//                                         color: K.grayColor,
//                                       ),
//                                     ),
//                                     GetBuilder<FavoriteController>(
//                                         init: FavoriteController(),
//                                         builder:(controller){
//                                           // final x=controller.favoriteList.firstWhere((element) => element.id==productModel!.key,orElse: ()=>null);
//                                           return IconButton(
//                                             onPressed: () {
//                                               controller.isChecked();
//                                               // controller.check==true?
//                                               controller.addToFavorite(favouriteModel);
//                                               // controller.addToFavorite(favouriteModel.name.toString()):controller.removefromFavorite(favouriteModel);
//                                             },
//                                             icon: controller.check.value
//                                                 ? const Icon(
//                                               Icons.favorite,
//                                               color: K.mainColor,
//                                             )
//                                                 : const Icon(
//                                               Icons.favorite_border_outlined,
//                                               color: K.grayColor,
//                                             ),
//                                           );
//                                         }
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               'Boomboogie',
//                               style: TextStyle(
//                                 color: K.grayColor,
//                                 fontSize: 16.sp,
//                               ),
//                             ),
//                             SizedBox(height: 10.h),
//                             Text(
//                               'Description\n',
//                               style: TextStyle(
//                                   color: Colors.black.withOpacity(.6),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18.sp),
//                             ),
//                             AutoSizeText(
//                               productModel!.description!,
//                               // maxLines: 4,
//                               style: TextStyle(
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             K.sizedBoxH,
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Colors',
//                                       style: TextStyle(
//                                         fontSize: 18.sp,
//                                         color: Colors.grey,
//                                         fontFamily: "Poppins-Bold",
//                                       ),
//                                     ),
//                                     Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           SizedBox(
//                                             height: 50.h,
//                                             child: ListView.builder(
//                                                 scrollDirection: Axis.horizontal,
//                                                 shrinkWrap: true,
//                                                 itemCount: productModel!.colors!.length == 0
//                                                     ? 0
//                                                     : productModel!.colors!.length,
//                                                 itemBuilder: (ctx, index) => Padding(
//                                                   padding: const EdgeInsets.all(4),
//                                                   child: Container(
//                                                     height: 35.h,
//                                                     width: 35.w,
//                                                     decoration: BoxDecoration(
//                                                         shape: BoxShape.circle,
//                                                         color: Color(
//                                                             StringToHex.toColor(
//                                                               productModel!
//                                                                   .colors![index],
//                                                             )) ==
//                                                             0
//                                                             ? Colors.white
//                                                             : Color(StringToHex.toColor(
//                                                           productModel!
//                                                               .colors![index],
//                                                         ))),
//                                                   ),
//                                                 )),
//                                           ),
//                                         ])
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 20),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'Price',
//                                         style: TextStyle(
//                                           fontSize: 18.sp,
//                                           color: Colors.grey,
//                                           fontWeight: FontWeight.w600,
//                                           fontFamily: "Poppins SemiBold",
//                                         ),
//                                       ),
//                                       Text(
//                                         '${productModel!.price!}LE',
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 15.sp,
//                                             fontWeight: FontWeight.bold),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ), K.sizedBoxH,
//                       GetBuilder<CartController>(
//                         init: CartController(),
//                         builder:(controller)=>  AddButton(
//                           text: 'Add to cart',
//                           onPressed: () {
//                             controller.addToCart( CartProductModel(
//                               name: productModel!.name.toString(),
//                               image: productModel!.image.toString(),
//                               price: productModel!.price,
//                               productId:productModel!.key.toString(),
//                               // rate: productDetailsModel.rate,
//                               quantity: 1,
//                             )
//                             );
//                           },
//                         ),
//                       ), K.sizedBoxH,
//                       K.sizedBoxH,
//                     ],
//                   ),
//                 ),
//
//         ),
//         ),
//     );
//   }
// }
//
