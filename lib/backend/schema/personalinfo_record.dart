import 'dart:async';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'personalinfo_record.g.dart';

abstract class PersonalinfoRecord
    implements Built<PersonalinfoRecord, PersonalinfoRecordBuilder> {
  static Serializer<PersonalinfoRecord> get serializer =>
      _$personalinfoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PersonalinfoRecordBuilder builder) => builder;

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

Map<String, dynamic> createPersonalinfoRecordData() => serializers.toFirestore(
    PersonalinfoRecord.serializer, PersonalinfoRecord((p) => p));

PersonalinfoRecord get dummyPersonalinfoRecord {
  final builder = PersonalinfoRecordBuilder();
  return builder.build();
}

List<PersonalinfoRecord> createDummyPersonalinfoRecord({int count}) =>
    List.generate(count, (_) => dummyPersonalinfoRecord);
