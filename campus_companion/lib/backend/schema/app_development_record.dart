import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppDevelopmentRecord extends FirestoreRecord {
  AppDevelopmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _level = castToType<int>(snapshotData['level']);
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('app_development');

  static Stream<AppDevelopmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppDevelopmentRecord.fromSnapshot(s));

  static Future<AppDevelopmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppDevelopmentRecord.fromSnapshot(s));

  static AppDevelopmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppDevelopmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppDevelopmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppDevelopmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppDevelopmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppDevelopmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppDevelopmentRecordData({
  int? level,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'level': level,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppDevelopmentRecordDocumentEquality
    implements Equality<AppDevelopmentRecord> {
  const AppDevelopmentRecordDocumentEquality();

  @override
  bool equals(AppDevelopmentRecord? e1, AppDevelopmentRecord? e2) {
    return e1?.level == e2?.level && e1?.name == e2?.name;
  }

  @override
  int hash(AppDevelopmentRecord? e) =>
      const ListEquality().hash([e?.level, e?.name]);

  @override
  bool isValidKey(Object? o) => o is AppDevelopmentRecord;
}
