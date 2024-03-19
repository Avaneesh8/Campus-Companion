import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommitiesRecord extends FirestoreRecord {
  CommitiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "members" field.
  String? _members;
  String get members => _members ?? '';
  bool hasMembers() => _members != null;

  // "global" field.
  bool? _global;
  bool get global => _global ?? false;
  bool hasGlobal() => _global != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _members = snapshotData['members'] as String?;
    _global = snapshotData['global'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commities');

  static Stream<CommitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommitiesRecord.fromSnapshot(s));

  static Future<CommitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommitiesRecord.fromSnapshot(s));

  static CommitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommitiesRecordData({
  String? image,
  String? name,
  String? members,
  bool? global,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'members': members,
      'global': global,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommitiesRecordDocumentEquality implements Equality<CommitiesRecord> {
  const CommitiesRecordDocumentEquality();

  @override
  bool equals(CommitiesRecord? e1, CommitiesRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.members == e2?.members &&
        e1?.global == e2?.global;
  }

  @override
  int hash(CommitiesRecord? e) =>
      const ListEquality().hash([e?.image, e?.name, e?.members, e?.global]);

  @override
  bool isValidKey(Object? o) => o is CommitiesRecord;
}
