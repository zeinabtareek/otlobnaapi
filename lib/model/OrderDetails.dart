/// id : 27
/// food_id : 120
/// order_id : 100023
/// price : 14
/// food_details : {"id":120,"name":"Hazelnut semifreddo","description":"Hazelnuts are used in baking and desserts, confectionery to make praline, and also used in combination with chocolate for chocolate truffles and products such as chocolate bars, hazelnut cocoa spread such as Nutella, and Frangelico liqueur.","image":"2021-08-21-6121073d44b4a.png","category_id":11,"category_ids":[{"id":"11","position":1}],"variations":[],"add_ons":[],"attributes":[],"choice_options":[],"price":14,"tax":12,"tax_type":"percent","discount":3,"discount_type":"percent","available_time_starts":"00:10:00","available_time_ends":"23:45:00","set_menu":0,"status":1,"restaurant_id":11,"created_at":"2021-08-21T14:01:33.000000Z","updated_at":"2021-08-21T14:01:33.000000Z","order_count":0,"restaurant_name":"Redcliff Cafe","restaurant_discount":0,"restaurant_opening_time":"00:01","restaurant_closing_time":"23:59","avg_rating":0,"rating_count":0}
/// variation : []
/// add_ons : []
/// discount_on_food : 0.42
/// discount_type : "discount_on_product"
/// quantity : 8
/// tax_amount : 1.68
/// variant : "null"
/// created_at : "2021-08-21T21:32:36.000000Z"
/// updated_at : "2021-08-21T21:32:36.000000Z"
/// item_campaign_id : null
/// total_add_on_price : 0

class OrderDetails {
  OrderDetails({
      int? id, 
      int? foodId, 
      int? orderId, 
      int? price, 
      FoodDetails? foodDetails, 
      List<dynamic>? variation, 
      List<dynamic>? addOns, 
      double? discountOnFood, 
      String? discountType, 
      int? quantity, 
      double? taxAmount, 
      String? variant, 
      String? createdAt, 
      String? updatedAt, 
      dynamic itemCampaignId, 
      int? totalAddOnPrice,}){
    _id = id;
    _foodId = foodId;
    _orderId = orderId;
    _price = price;
    _foodDetails = foodDetails;
    _variation = variation;
    _addOns = addOns;
    _discountOnFood = discountOnFood;
    _discountType = discountType;
    _quantity = quantity;
    _taxAmount = taxAmount;
    _variant = variant;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _itemCampaignId = itemCampaignId;
    _totalAddOnPrice = totalAddOnPrice;
}

  OrderDetails.fromJson(dynamic json) {
    _id = json['id'];
    _foodId = json['food_id'];
    _orderId = json['order_id'];
    _price = json['price'];
    _foodDetails = json['food_details'] != null ? FoodDetails.fromJson(json['food_details']) : null;
    if (json['variation'] != null) {
      _variation = [];
      json['variation'].forEach((v) {
        _variation?.add(Dynamic.fromJson(v));
      });
    }
    if (json['add_ons'] != null) {
      _addOns = [];
      json['add_ons'].forEach((v) {
        _addOns?.add(Dynamic.fromJson(v));
      });
    }
    _discountOnFood = json['discount_on_food'];
    _discountType = json['discount_type'];
    _quantity = json['quantity'];
    _taxAmount = json['tax_amount'];
    _variant = json['variant'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _itemCampaignId = json['item_campaign_id'];
    _totalAddOnPrice = json['total_add_on_price'];
  }
  int? _id;
  int? _foodId;
  int? _orderId;
  int? _price;
  FoodDetails? _foodDetails;
  List<dynamic>? _variation;
  List<dynamic>? _addOns;
  double? _discountOnFood;
  String? _discountType;
  int? _quantity;
  double? _taxAmount;
  String? _variant;
  String? _createdAt;
  String? _updatedAt;
  dynamic _itemCampaignId;
  int? _totalAddOnPrice;
OrderDetails copyWith({  int? id,
  int? foodId,
  int? orderId,
  int? price,
  FoodDetails? foodDetails,
  List<dynamic>? variation,
  List<dynamic>? addOns,
  double? discountOnFood,
  String? discountType,
  int? quantity,
  double? taxAmount,
  String? variant,
  String? createdAt,
  String? updatedAt,
  dynamic itemCampaignId,
  int? totalAddOnPrice,
}) => OrderDetails(  id: id ?? _id,
  foodId: foodId ?? _foodId,
  orderId: orderId ?? _orderId,
  price: price ?? _price,
  foodDetails: foodDetails ?? _foodDetails,
  variation: variation ?? _variation,
  addOns: addOns ?? _addOns,
  discountOnFood: discountOnFood ?? _discountOnFood,
  discountType: discountType ?? _discountType,
  quantity: quantity ?? _quantity,
  taxAmount: taxAmount ?? _taxAmount,
  variant: variant ?? _variant,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  itemCampaignId: itemCampaignId ?? _itemCampaignId,
  totalAddOnPrice: totalAddOnPrice ?? _totalAddOnPrice,
);
  int? get id => _id;
  int? get foodId => _foodId;
  int? get orderId => _orderId;
  int? get price => _price;
  FoodDetails? get foodDetails => _foodDetails;
  List<dynamic>? get variation => _variation;
  List<dynamic>? get addOns => _addOns;
  double? get discountOnFood => _discountOnFood;
  String? get discountType => _discountType;
  int? get quantity => _quantity;
  double? get taxAmount => _taxAmount;
  String? get variant => _variant;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get itemCampaignId => _itemCampaignId;
  int? get totalAddOnPrice => _totalAddOnPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['food_id'] = _foodId;
    map['order_id'] = _orderId;
    map['price'] = _price;
    if (_foodDetails != null) {
      map['food_details'] = _foodDetails?.toJson();
    }
    if (_variation != null) {
      map['variation'] = _variation?.map((v) => v.toJson()).toList();
    }
    if (_addOns != null) {
      map['add_ons'] = _addOns?.map((v) => v.toJson()).toList();
    }
    map['discount_on_food'] = _discountOnFood;
    map['discount_type'] = _discountType;
    map['quantity'] = _quantity;
    map['tax_amount'] = _taxAmount;
    map['variant'] = _variant;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['item_campaign_id'] = _itemCampaignId;
    map['total_add_on_price'] = _totalAddOnPrice;
    return map;
  }

}

/// id : 120
/// name : "Hazelnut semifreddo"
/// description : "Hazelnuts are used in baking and desserts, confectionery to make praline, and also used in combination with chocolate for chocolate truffles and products such as chocolate bars, hazelnut cocoa spread such as Nutella, and Frangelico liqueur."
/// image : "2021-08-21-6121073d44b4a.png"
/// category_id : 11
/// category_ids : [{"id":"11","position":1}]
/// variations : []
/// add_ons : []
/// attributes : []
/// choice_options : []
/// price : 14
/// tax : 12
/// tax_type : "percent"
/// discount : 3
/// discount_type : "percent"
/// available_time_starts : "00:10:00"
/// available_time_ends : "23:45:00"
/// set_menu : 0
/// status : 1
/// restaurant_id : 11
/// created_at : "2021-08-21T14:01:33.000000Z"
/// updated_at : "2021-08-21T14:01:33.000000Z"
/// order_count : 0
/// restaurant_name : "Redcliff Cafe"
/// restaurant_discount : 0
/// restaurant_opening_time : "00:01"
/// restaurant_closing_time : "23:59"
/// avg_rating : 0
/// rating_count : 0

class FoodDetails {
  FoodDetails({
      int? id, 
      String? name, 
      String? description, 
      String? image, 
      int? categoryId, 
      List<CategoryIds>? categoryIds, 
      List<dynamic>? variations, 
      List<dynamic>? addOns, 
      List<dynamic>? attributes, 
      List<dynamic>? choiceOptions, 
      int? price, 
      int? tax, 
      String? taxType, 
      int? discount, 
      String? discountType, 
      String? availableTimeStarts, 
      String? availableTimeEnds, 
      int? setMenu, 
      int? status, 
      int? restaurantId, 
      String? createdAt, 
      String? updatedAt, 
      int? orderCount, 
      String? restaurantName, 
      int? restaurantDiscount, 
      String? restaurantOpeningTime, 
      String? restaurantClosingTime, 
      int? avgRating, 
      int? ratingCount,}){
    _id = id;
    _name = name;
    _description = description;
    _image = image;
    _categoryId = categoryId;
    _categoryIds = categoryIds;
    _variations = variations;
    _addOns = addOns;
    _attributes = attributes;
    _choiceOptions = choiceOptions;
    _price = price;
    _tax = tax;
    _taxType = taxType;
    _discount = discount;
    _discountType = discountType;
    _availableTimeStarts = availableTimeStarts;
    _availableTimeEnds = availableTimeEnds;
    _setMenu = setMenu;
    _status = status;
    _restaurantId = restaurantId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _orderCount = orderCount;
    _restaurantName = restaurantName;
    _restaurantDiscount = restaurantDiscount;
    _restaurantOpeningTime = restaurantOpeningTime;
    _restaurantClosingTime = restaurantClosingTime;
    _avgRating = avgRating;
    _ratingCount = ratingCount;
}

  FoodDetails.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _image = json['image'];
    _categoryId = json['category_id'];
    if (json['category_ids'] != null) {
      _categoryIds = [];
      json['category_ids'].forEach((v) {
        _categoryIds?.add(CategoryIds.fromJson(v));
      });
    }
    if (json['variations'] != null) {
      _variations = [];
      json['variations'].forEach((v) {
        _variations?.add(Dynamic.fromJson(v));
      });
    }
    if (json['add_ons'] != null) {
      _addOns = [];
      json['add_ons'].forEach((v) {
        _addOns?.add(Dynamic.fromJson(v));
      });
    }
    if (json['attributes'] != null) {
      _attributes = [];
      json['attributes'].forEach((v) {
        _attributes?.add(Dynamic.fromJson(v));
      });
    }
    if (json['choice_options'] != null) {
      _choiceOptions = [];
      json['choice_options'].forEach((v) {
        _choiceOptions?.add(Dynamic.fromJson(v));
      });
    }
    _price = json['price'];
    _tax = json['tax'];
    _taxType = json['tax_type'];
    _discount = json['discount'];
    _discountType = json['discount_type'];
    _availableTimeStarts = json['available_time_starts'];
    _availableTimeEnds = json['available_time_ends'];
    _setMenu = json['set_menu'];
    _status = json['status'];
    _restaurantId = json['restaurant_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _orderCount = json['order_count'];
    _restaurantName = json['restaurant_name'];
    _restaurantDiscount = json['restaurant_discount'];
    _restaurantOpeningTime = json['restaurant_opening_time'];
    _restaurantClosingTime = json['restaurant_closing_time'];
    _avgRating = json['avg_rating'];
    _ratingCount = json['rating_count'];
  }
  int? _id;
  String? _name;
  String? _description;
  String? _image;
  int? _categoryId;
  List<CategoryIds>? _categoryIds;
  List<dynamic>? _variations;
  List<dynamic>? _addOns;
  List<dynamic>? _attributes;
  List<dynamic>? _choiceOptions;
  int? _price;
  int? _tax;
  String? _taxType;
  int? _discount;
  String? _discountType;
  String? _availableTimeStarts;
  String? _availableTimeEnds;
  int? _setMenu;
  int? _status;
  int? _restaurantId;
  String? _createdAt;
  String? _updatedAt;
  int? _orderCount;
  String? _restaurantName;
  int? _restaurantDiscount;
  String? _restaurantOpeningTime;
  String? _restaurantClosingTime;
  int? _avgRating;
  int? _ratingCount;
FoodDetails copyWith({  int? id,
  String? name,
  String? description,
  String? image,
  int? categoryId,
  List<CategoryIds>? categoryIds,
  List<dynamic>? variations,
  List<dynamic>? addOns,
  List<dynamic>? attributes,
  List<dynamic>? choiceOptions,
  int? price,
  int? tax,
  String? taxType,
  int? discount,
  String? discountType,
  String? availableTimeStarts,
  String? availableTimeEnds,
  int? setMenu,
  int? status,
  int? restaurantId,
  String? createdAt,
  String? updatedAt,
  int? orderCount,
  String? restaurantName,
  int? restaurantDiscount,
  String? restaurantOpeningTime,
  String? restaurantClosingTime,
  int? avgRating,
  int? ratingCount,
}) => FoodDetails(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  image: image ?? _image,
  categoryId: categoryId ?? _categoryId,
  categoryIds: categoryIds ?? _categoryIds,
  variations: variations ?? _variations,
  addOns: addOns ?? _addOns,
  attributes: attributes ?? _attributes,
  choiceOptions: choiceOptions ?? _choiceOptions,
  price: price ?? _price,
  tax: tax ?? _tax,
  taxType: taxType ?? _taxType,
  discount: discount ?? _discount,
  discountType: discountType ?? _discountType,
  availableTimeStarts: availableTimeStarts ?? _availableTimeStarts,
  availableTimeEnds: availableTimeEnds ?? _availableTimeEnds,
  setMenu: setMenu ?? _setMenu,
  status: status ?? _status,
  restaurantId: restaurantId ?? _restaurantId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  orderCount: orderCount ?? _orderCount,
  restaurantName: restaurantName ?? _restaurantName,
  restaurantDiscount: restaurantDiscount ?? _restaurantDiscount,
  restaurantOpeningTime: restaurantOpeningTime ?? _restaurantOpeningTime,
  restaurantClosingTime: restaurantClosingTime ?? _restaurantClosingTime,
  avgRating: avgRating ?? _avgRating,
  ratingCount: ratingCount ?? _ratingCount,
);
  int? get id => _id;
  String? get name => _name;
  String? get description => _description;
  String? get image => _image;
  int? get categoryId => _categoryId;
  List<CategoryIds>? get categoryIds => _categoryIds;
  List<dynamic>? get variations => _variations;
  List<dynamic>? get addOns => _addOns;
  List<dynamic>? get attributes => _attributes;
  List<dynamic>? get choiceOptions => _choiceOptions;
  int? get price => _price;
  int? get tax => _tax;
  String? get taxType => _taxType;
  int? get discount => _discount;
  String? get discountType => _discountType;
  String? get availableTimeStarts => _availableTimeStarts;
  String? get availableTimeEnds => _availableTimeEnds;
  int? get setMenu => _setMenu;
  int? get status => _status;
  int? get restaurantId => _restaurantId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get orderCount => _orderCount;
  String? get restaurantName => _restaurantName;
  int? get restaurantDiscount => _restaurantDiscount;
  String? get restaurantOpeningTime => _restaurantOpeningTime;
  String? get restaurantClosingTime => _restaurantClosingTime;
  int? get avgRating => _avgRating;
  int? get ratingCount => _ratingCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['image'] = _image;
    map['category_id'] = _categoryId;
    if (_categoryIds != null) {
      map['category_ids'] = _categoryIds?.map((v) => v.toJson()).toList();
    }
    if (_variations != null) {
      map['variations'] = _variations?.map((v) => v.toJson()).toList();
    }
    if (_addOns != null) {
      map['add_ons'] = _addOns?.map((v) => v.toJson()).toList();
    }
    if (_attributes != null) {
      map['attributes'] = _attributes?.map((v) => v.toJson()).toList();
    }
    if (_choiceOptions != null) {
      map['choice_options'] = _choiceOptions?.map((v) => v.toJson()).toList();
    }
    map['price'] = _price;
    map['tax'] = _tax;
    map['tax_type'] = _taxType;
    map['discount'] = _discount;
    map['discount_type'] = _discountType;
    map['available_time_starts'] = _availableTimeStarts;
    map['available_time_ends'] = _availableTimeEnds;
    map['set_menu'] = _setMenu;
    map['status'] = _status;
    map['restaurant_id'] = _restaurantId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['order_count'] = _orderCount;
    map['restaurant_name'] = _restaurantName;
    map['restaurant_discount'] = _restaurantDiscount;
    map['restaurant_opening_time'] = _restaurantOpeningTime;
    map['restaurant_closing_time'] = _restaurantClosingTime;
    map['avg_rating'] = _avgRating;
    map['rating_count'] = _ratingCount;
    return map;
  }

}

/// id : "11"
/// position : 1

class CategoryIds {
  CategoryIds({
      String? id, 
      int? position,}){
    _id = id;
    _position = position;
}

  CategoryIds.fromJson(dynamic json) {
    _id = json['id'];
    _position = json['position'];
  }
  String? _id;
  int? _position;
CategoryIds copyWith({  String? id,
  int? position,
}) => CategoryIds(  id: id ?? _id,
  position: position ?? _position,
);
  String? get id => _id;
  int? get position => _position;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['position'] = _position;
    return map;
  }

}