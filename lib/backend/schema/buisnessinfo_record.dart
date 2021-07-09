import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'buisnessinfo_record.g.dart';

abstract class BuisnessinfoRecord
    implements Built<BuisnessinfoRecord, BuisnessinfoRecordBuilder> {
  static Serializer<BuisnessinfoRecord> get serializer =>
      _$buisnessinfoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'buisness_name')
  String get buisnessName;

  @nullable
  @BuiltValueField(wireName: 'buisness_model')
  String get buisnessModel;

  @nullable
  @BuiltValueField(wireName: 'buisness_entity')
  String get buisnessEntity;

  @nullable
  @BuiltValueField(wireName: 'no_of_founders')
  int get noOfFounders;

  @nullable
  int get ownership;

  @nullable
  @BuiltValueField(wireName: 'buisness_sector')
  String get buisnessSector;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'buisness_pan')
  String get buisnessPan;

  @nullable
  @BuiltValueField(wireName: 'buisness_cin')
  String get buisnessCin;

  @nullable
  @BuiltValueField(wireName: 'gst_number')
  String get gstNumber;

  @nullable
  @BuiltValueField(wireName: 'msme_registration')
  String get msmeRegistration;

  @nullable
  String get ipr;

  @nullable
  String get licences;

  @nullable
  @BuiltValueField(wireName: 'no_of_products')
  int get noOfProducts;

  @nullable
  @BuiltValueField(wireName: 'product_description')
  String get productDescription;

  @nullable
  String get mas;

  @nullable
  @BuiltValueField(wireName: 'market_segment')
  String get marketSegment;

  @nullable
  @BuiltValueField(wireName: 'sales_strategy')
  String get salesStrategy;

  @nullable
  @BuiltValueField(wireName: 'sales_forecast')
  String get salesForecast;

  @nullable
  @BuiltValueField(wireName: 'avg_unit_price')
  int get avgUnitPrice;

  @nullable
  @BuiltValueField(wireName: 'location_facilities')
  String get locationFacilities;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BuisnessinfoRecordBuilder builder) => builder
    ..buisnessName = ''
    ..buisnessModel = ''
    ..buisnessEntity = ''
    ..noOfFounders = 0
    ..ownership = 0
    ..buisnessSector = ''
    ..buisnessPan = ''
    ..buisnessCin = ''
    ..gstNumber = ''
    ..msmeRegistration = ''
    ..ipr = ''
    ..licences = ''
    ..noOfProducts = 0
    ..productDescription = ''
    ..mas = ''
    ..marketSegment = ''
    ..salesStrategy = ''
    ..salesForecast = ''
    ..avgUnitPrice = 0
    ..locationFacilities = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buisnessinfo');

  static Stream<BuisnessinfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BuisnessinfoRecord._();
  factory BuisnessinfoRecord(
          [void Function(BuisnessinfoRecordBuilder) updates]) =
      _$BuisnessinfoRecord;

  static BuisnessinfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createBuisnessinfoRecordData({
  String buisnessName,
  String buisnessModel,
  String buisnessEntity,
  int noOfFounders,
  int ownership,
  String buisnessSector,
  DocumentReference user,
  String buisnessPan,
  String buisnessCin,
  String gstNumber,
  String msmeRegistration,
  String ipr,
  String licences,
  int noOfProducts,
  String productDescription,
  String mas,
  String marketSegment,
  String salesStrategy,
  String salesForecast,
  int avgUnitPrice,
  String locationFacilities,
}) =>
    serializers.toFirestore(
        BuisnessinfoRecord.serializer,
        BuisnessinfoRecord((b) => b
          ..buisnessName = buisnessName
          ..buisnessModel = buisnessModel
          ..buisnessEntity = buisnessEntity
          ..noOfFounders = noOfFounders
          ..ownership = ownership
          ..buisnessSector = buisnessSector
          ..user = user
          ..buisnessPan = buisnessPan
          ..buisnessCin = buisnessCin
          ..gstNumber = gstNumber
          ..msmeRegistration = msmeRegistration
          ..ipr = ipr
          ..licences = licences
          ..noOfProducts = noOfProducts
          ..productDescription = productDescription
          ..mas = mas
          ..marketSegment = marketSegment
          ..salesStrategy = salesStrategy
          ..salesForecast = salesForecast
          ..avgUnitPrice = avgUnitPrice
          ..locationFacilities = locationFacilities));
