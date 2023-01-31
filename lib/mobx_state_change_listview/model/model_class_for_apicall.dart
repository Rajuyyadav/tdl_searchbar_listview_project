import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'model_class_for_apicall.g.dart';

@JsonSerializable()
class UserModelMain {
  final List<UserModel>? data;
  UserModelMain( this.data);
  factory UserModelMain.fromJson(Map<String, dynamic> json) =>
      _$UserModelMainFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelMainToJson(this);
}


@JsonSerializable()
class UserModel {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;

  UserModel(this.id, this.name, this.username, this.email,
      this.address, this.phone, this.website, this.company);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class Address {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geo {
  final String? lat;
  final String? lng;

  Geo(this.lat, this.lng);
  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  Map<String, dynamic> toJson() => _$GeoToJson(this);
}

@JsonSerializable()
class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Company(this.name, this.catchPhrase, this.bs);

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
  @override
  toString() => "$name $bs $catchPhrase";
}

/*
*  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
  * */
