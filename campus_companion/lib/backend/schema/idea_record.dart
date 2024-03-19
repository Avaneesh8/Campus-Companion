import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class IdeaRecord extends FirestoreRecord {
  IdeaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "personname" field.
  String? _personname;
  String get personname => _personname ?? '';
  bool hasPersonname() => _personname != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _email = snapshotData['email'] as String?;
    _personname = snapshotData['personname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('idea');

  static Stream<IdeaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IdeaRecord.fromSnapshot(s));

  static Future<IdeaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IdeaRecord.fromSnapshot(s));

  static IdeaRecord fromSnapshot(DocumentSnapshot snapshot) => IdeaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IdeaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IdeaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IdeaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IdeaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIdeaRecordData({
  String? name,
  String? description,
  String? email,
  String? personname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'email': email,
      'personname': personname,
    }.withoutNulls,
  );

  return firestoreData;
}

class IdeaRecordDocumentEquality implements Equality<IdeaRecord> {
  const IdeaRecordDocumentEquality();

  @override
  bool equals(IdeaRecord? e1, IdeaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.email == e2?.email &&
        e1?.personname == e2?.personname;
  }

  @override
  int hash(IdeaRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.email, e?.personname]);

  @override
  bool isValidKey(Object? o) => o is IdeaRecord;
}
