import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/order_details_controller.dart';

class OrderDetails extends StatelessWidget {
  final controller = Get.put(OrderDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('click hna ya3am'),
          onPressed: () {
            controller.getOrderDetails();
          },
        ),
      ),
    );
  }
}
