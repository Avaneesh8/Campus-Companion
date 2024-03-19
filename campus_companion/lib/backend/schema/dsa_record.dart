import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DsaRecord extends FirestoreRecord {
  DsaRecord._(
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
      FirebaseFirestore.instance.collection('dsa');

  static Stream<DsaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DsaRecord.fromSnapshot(s));

  static Future<DsaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DsaRecord.fromSnapshot(s));

  static DsaRecord fromSnapshot(DocumentSnapshot snapshot) => DsaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DsaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DsaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DsaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DsaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDsaRecordData({
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

class DsaRecordDocumentEquality implements Equality<DsaRecord> {
  const DsaRecordDocumentEquality();

  @override
  bool equals(DsaRecord? e1, DsaRecord? e2) {
    return e1?.level == e2?.level && e1?.name == e2?.name;
  }

  @override
  int hash(DsaRecord? e) => const ListEquality().hash([e?.level, e?.name]);

  @override
  bool isValidKey(Object? o) => o is DsaRecord;
}
