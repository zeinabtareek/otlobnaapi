import 'dart:convert';

import 'package:otlobnaapi/constant/auth_helper.dart';
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/model/profile_model.dart';
import 'package:otlobnaapi/repositories/profile_repo/profile_repo.dart';
import 'package:http/http.dart'as http;

import '../../constant/constStrings.dart';
class ProfileAPI extends ProfileRepo{
  AuthHelper authHelper=AuthHelper();
  @override
  Future<ProfileModel> getData() async {
    ProfileModel profileModel=ProfileModel();
    var token= CacheHelper.getData(key: 'token');
    try{
      http.Response response= await http.get(
          Uri.parse('${ConstStrings.baseURL}${ConstStrings.profileURL}$token'),
       );
      if(response.statusCode==200){
        print(response.body);
        var data=jsonDecode(response.body);
        profileModel=ProfileModel.fromJson(data);
        print('profiletoken :$token');
        print('profileModel :${profileModel.email}');
        return profileModel;}
     }catch (e){
      print(e);
    }
    return profileModel;
  }
}