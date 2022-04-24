import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/Profile_apis/profile_apis.dart';
import '../profile_screen/controller/profile_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  ProfileAPI profileAPI = ProfileAPI();
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: TextButton(
            onPressed: () {},
            child: const Text('data')),
      ),
    ));
  }
}
