import 'package:get/get.dart';
import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/services/Profile_apis/profile_apis.dart';

class ProfileController extends GetxController {
  final _services = ProfileAPI();

  ProfileModel? profileModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    profileModel = await _services.getData();
  }
}
