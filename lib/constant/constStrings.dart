import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConstStrings {
  static const String baseURL = 'https://otlobna-eg.com';
  static const String configURL = '/api/v1/config';
  static const String forgetPassURl = '/api/v1/auth/delivery-man/forgot-password';
  static const String verifyTokenURL = '/api/v1/auth/delivery-man/verify-token';
  static const String resetPassURL = '/api/v1/auth/delivery-man/reset-password';
  static const String loginURl = '/api/v1/auth/delivery-man/login';
  static const String updateTokenURL = '/api/v1/delivery-man/update-fcm-token';
  static const String currentOrdersURL = '/api/v1/delivery-man/current-orders?token=';
  static const String allOrdersURL = '/api/v1/delivery-man/all-orders/';
  static const String latestOrdersURL = '/api/v1/delivery-man/latest-orders/';
  static const String recordLocationURL = '/api/v1/delivery-man/record-location-data';
  static const String profileURL = '/api/v1/delivery-man/profile/';
  static const String updateOrderStatueURL= '/api/v1/delivery-man/update-order-status';
  static const String updatePaymentStatueURL = '/api/v1/delivery-man/update-payment-status';
  static const String orderDetailsURL = '/api/v1/delivery-man/order-details/';
   static const String acceptOrderURL = '/api/v1/delivery-man/accept-order';
  static const String activeStatusURL = '/api/v1/delivery-man/update-active-status';
  static const String updateProfileURL = '/api/v1/delivery-man/update-profile';
  static const String notificationURL = '/api/v1/delivery-man/notifications/';
  static const String orderDeliveryHistory = '/api/v1/delivery-man/order-delivery-history/';


  static SizedBox sizedBoxH = SizedBox(
    height: 15.h,
  );
  static SizedBox sizedBoxW = SizedBox(
    width: 22.w,
  );
}
