// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
      json['id'] as int,
      json['first_name'] as String,
      json['last_name'] as String,
      json['photo_100'] as String,
      json['online'] as int,
      json['first_name_acc'] as String,
      json['last_name_acc'] as String,
      json['sex'] as int);
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'photo_100': instance.avatar,
      'online': instance.online,
      'first_name_acc': instance.firstNameAcc,
      'last_name_acc': instance.lastNameAcc,
      'sex': instance.sex
    };
