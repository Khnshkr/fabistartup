import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'aadhaar_num')
  String get aadhaarNum;

  @nullable
  @BuiltValueField(wireName: 'pan_num')
  String get panNum;

  @nullable
  String get nationality;

  @nullable
  String get state;

  @nullable
  @BuiltValueField(wireName: 'current_add')
  String get currentAdd;

  @nullable
  @BuiltValueField(wireName: 'perm_address')
  String get permAddress;

  @nullable
  @BuiltValueField(wireName: 'date_of_birth')
  String get dateOfBirth;

  @nullable
  @BuiltValueField(wireName: 'describe_self')
  String get describeSelf;

  @nullable
  String get category;

  @nullable
  String get qualification;

  @nullable
  String get college;

  @nullable
  @BuiltValueField(wireName: 'attnd_year')
  int get attndYear;

  @nullable
  String get percentage;

  @nullable
  String get specialization;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..gender = ''
    ..aadhaarNum = ''
    ..panNum = ''
    ..nationality = ''
    ..state = ''
    ..currentAdd = ''
    ..permAddress = ''
    ..dateOfBirth = ''
    ..describeSelf = ''
    ..category = ''
    ..qualification = ''
    ..college = ''
    ..attndYear = 0
    ..percentage = ''
    ..specialization = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String gender,
  String aadhaarNum,
  String panNum,
  String nationality,
  String state,
  String currentAdd,
  String permAddress,
  String dateOfBirth,
  String describeSelf,
  String category,
  String qualification,
  String college,
  int attndYear,
  String percentage,
  String specialization,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..gender = gender
          ..aadhaarNum = aadhaarNum
          ..panNum = panNum
          ..nationality = nationality
          ..state = state
          ..currentAdd = currentAdd
          ..permAddress = permAddress
          ..dateOfBirth = dateOfBirth
          ..describeSelf = describeSelf
          ..category = category
          ..qualification = qualification
          ..college = college
          ..attndYear = attndYear
          ..percentage = percentage
          ..specialization = specialization));
