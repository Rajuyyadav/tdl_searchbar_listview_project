// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_class_for_apicall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelMain _$UserModelMainFromJson(Map<String, dynamic> json) =>
    UserModelMain(
      (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelMainToJson(UserModelMain instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['id'] as int?,
      json['name'] as String?,
      json['username'] as String?,
      json['email'] as String?,
      json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      json['phone'] as String?,
      json['website'] as String?,
      json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['street'] as String?,
      json['suite'] as String?,
      json['city'] as String?,
      json['zipcode'] as String?,
      json['geo'] == null
          ? null
          : Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

Geo _$GeoFromJson(Map<String, dynamic> json) => Geo(
      json['lat'] as String?,
      json['lng'] as String?,
    );

Map<String, dynamic> _$GeoToJson(Geo instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      json['name'] as String?,
      json['catchPhrase'] as String?,
      json['bs'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
