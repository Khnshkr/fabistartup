import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'swot_record.g.dart';

abstract class SwotRecord implements Built<SwotRecord, SwotRecordBuilder> {
  static Serializer<SwotRecord> get serializer => _$swotRecordSerializer;

  @nullable
  BuiltList<String> get opportunities;

  @nullable
  BuiltList<String> get strengths;

  @nullable
  BuiltList<String> get weakness;

  @nullable
  BuiltList<String> get threats;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SwotRecordBuilder builder) => builder
    ..opportunities = ListBuilder()
    ..strengths = ListBuilder()
    ..weakness = ListBuilder()
    ..threats = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SWOT');

  static Stream<SwotRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SwotRecord._();
  factory SwotRecord([void Function(SwotRecordBuilder) updates]) = _$SwotRecord;

  static SwotRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createSwotRecordData({
  DocumentReference user,
}) =>
    serializers.toFirestore(
        SwotRecord.serializer,
        SwotRecord((s) => s
          ..opportunities = null
          ..strengths = null
          ..weakness = null
          ..threats = null
          ..user = user));
