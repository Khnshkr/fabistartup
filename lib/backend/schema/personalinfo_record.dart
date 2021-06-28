import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'personalinfo_record.g.dart';

abstract class PersonalinfoRecord
    implements Built<PersonalinfoRecord, PersonalinfoRecordBuilder> {
  static Serializer<PersonalinfoRecord> get serializer =>
      _$personalinfoRecordSerializer;

  @nullable
  String get gender;

  @nullable
  String get name;

  @nullable
  String get aadhaarnum;

  @nullable
  String get pannum;

  @nullable
  DocumentReference get mobileNumber;

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
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PersonalinfoRecordBuilder builder) => builder
    ..gender = ''
    ..name = ''
    ..aadhaarnum = ''
    ..pannum = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Personalinfo');

  static Stream<PersonalinfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PersonalinfoRecord._();
  factory PersonalinfoRecord(
          [void Function(PersonalinfoRecordBuilder) updates]) =
      _$PersonalinfoRecord;

  static PersonalinfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createPersonalinfoRecordData({
  String gender,
  String name,
  String aadhaarnum,
  String pannum,
  DocumentReference mobileNumber,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        PersonalinfoRecord.serializer,
        PersonalinfoRecord((p) => p
          ..gender = gender
          ..name = name
          ..aadhaarnum = aadhaarnum
          ..pannum = pannum
          ..mobileNumber = mobileNumber
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
