class TokenModel {
  String? token;
  String? zoneWiseTopic;

  TokenModel({this.token, this.zoneWiseTopic});

 factory TokenModel.fromJson(Map<String,dynamic>json){
   TokenModel tokenModel=TokenModel();
   tokenModel.token=json['token'];
   tokenModel.zoneWiseTopic=json['zone_wise_topic'];
   return tokenModel;
 }

}
