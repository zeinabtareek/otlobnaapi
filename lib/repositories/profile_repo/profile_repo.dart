



import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/model/token_model.dart';


abstract class ProfileRepo{
  Future<ProfileModel> getData();
}