class ProfileModel {
  int? id;
  String? fName;
  String? lName;
  String? phone;
  String? email;
  String? identityNumber;
  String? identityType;
  String? identityImage;
  String? image;
  String? fcmToken;
  int? zoneId;
  String? createdAt;
  String? updatedAt;
  bool? status;
  int? active;
  int? earning;
  int? currentOrders;
  String? type;
  String? applicationStatus;
  int? orderCount;
  String? assignedOrderCount;
  String? startService;
  String? startShift;
  String? endShift;
  int? avgRating;
  int? ratingCount;
  int? todaysOrderCount;
  int? thisWeekOrderCount;
  int? memberSinceDays;
  double? cashInHands;
  double? balance;
  int? todaysEarning;
  int? thisWeekEarning;
  int? thisMonthEarning;

  ProfileModel(
      {this.id,
      this.fName,
      this.lName,
      this.phone,
      this.email,
      this.identityNumber,
      this.identityType,
      this.identityImage,
      this.image,
      this.fcmToken,
      this.zoneId,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.active,
      this.earning,
      this.currentOrders,
      this.type,
      this.applicationStatus,
      this.orderCount,
      this.assignedOrderCount,
      this.startService,
      this.startShift,
      this.endShift,
      this.avgRating,
      this.ratingCount,
      this.todaysOrderCount,
      this.thisWeekOrderCount,
      this.memberSinceDays,
      this.cashInHands,
      this.balance,
      this.todaysEarning,
      this.thisWeekEarning,
      this.thisMonthEarning});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    identityNumber = json['identity_number'];
    identityType = json['identity_type'];
    identityImage = json['identity_image'];
    image = json['image'];
    fcmToken = json['fcm_token'];
    zoneId = json['zone_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    active = json['active'];
    earning = json['earning'];
    currentOrders = json['current_orders'];
    type = json['type'];
    applicationStatus = json['application_status'];
    orderCount = json['order_count'];
    assignedOrderCount = json['assigned_order_count'];
    startService = json['start_service'];
    startShift = json['start_shift'];
    endShift = json['end_shift'];
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count'];
    todaysOrderCount = json['todays_order_count'];
    thisWeekOrderCount = json['this_week_order_count'];
    memberSinceDays = json['member_since_days'];
    cashInHands = json['cash_in_hands'];
    balance = json['balance'];
    todaysEarning = json['todays_earning'];
    thisWeekEarning = json['this_week_earning'];
    thisMonthEarning = json['this_month_earning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['identity_number'] = this.identityNumber;
    data['identity_type'] = this.identityType;
    data['identity_image'] = this.identityImage;
    data['image'] = this.image;
    data['fcm_token'] = this.fcmToken;
    data['zone_id'] = this.zoneId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['status'] = this.status;
    data['active'] = this.active;
    data['earning'] = this.earning;
    data['current_orders'] = this.currentOrders;
    data['type'] = this.type;
    data['application_status'] = this.applicationStatus;
    data['order_count'] = this.orderCount;
    data['assigned_order_count'] = this.assignedOrderCount;
    data['start_service'] = this.startService;
    data['start_shift'] = this.startShift;
    data['end_shift'] = this.endShift;
    data['avg_rating'] = this.avgRating;
    data['rating_count'] = this.ratingCount;
    data['todays_order_count'] = this.todaysOrderCount;
    data['this_week_order_count'] = this.thisWeekOrderCount;
    data['member_since_days'] = this.memberSinceDays;
    data['cash_in_hands'] = this.cashInHands;
    data['balance'] = this.balance;
    data['todays_earning'] = this.todaysEarning;
    data['this_week_earning'] = this.thisWeekEarning;
    data['this_month_earning'] = this.thisMonthEarning;
    return data;
  }
}
