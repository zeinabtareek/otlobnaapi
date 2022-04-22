import 'dart:convert';
import 'package:otlobnaapi/constant/cache_helper.dart';
import 'package:otlobnaapi/model/token_model.dart';
import '../../constant/constStrings.dart';
import '../../repositories/auth_repo/auth_token.dart';
import 'package:http/http.dart' as http;

// class LoginApi extends LoginNumberRepo{
//   @override
//   Future<TokenModel> generateToken({String? email, String? password})async {
//     TokenModel tokenModel = TokenModel();
//     var body = {
//       "email":email,
//       "password":password
//       };try {
//       http.Response response = await http.post(
//           Uri.parse('${ConstStrings.baseURL }${ConstStrings.loginURl }'),body: body);
//       if (response.statusCode == 200) {
//         print(response.body);
//         // var data = jsonDecode(response.body);
//         // tokenModel= TokenModel.fromJson(data);
//         // CacheHelper.saveData(key: 'token', value: tokenModel.token);
//         // print('token :${CacheHelper.getData(key: 'token')}');
//         print(response);
//         return tokenModel;
//         }else {throw Exception('Error getting data');}
//         }catch (e) {
//         print(e);
//         }print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$tokenModel');
//        return tokenModel;
//   }
// }
class LoginApi{

  Login(String email, String password)async{
    try{
        http.Response response = await http.post(
          Uri.parse('https://www.otlobna-eg.com/api/v1/auth/delivery-man/login'),

          body:{
      "email":email,
      "password":password
      });
      if(response.statusCode==200){
        print(response.body);
      }

    }catch(e){

    }
  }
}