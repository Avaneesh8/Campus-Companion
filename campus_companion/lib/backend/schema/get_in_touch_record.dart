import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GetInTouchRecord extends FirestoreRecord {
  GetInTouchRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "domin" field.
  String? _domin;
  String get domin => _domin ?? '';
  bool hasDomin() => _domin != null;

  void _initializeFields() {
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _email = snapshotData['email'] as String?;
    _domin = snapshotData['domin'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('get_in_touch');

  static Stream<GetInTouchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GetInTouchRecord.fromSnapshot(s));

  static Future<GetInTouchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GetInTouchRecord.fromSnapshot(s));

  static GetInTouchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GetInTouchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GetInTouchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GetInTouchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GetInTouchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GetInTouchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGetInTouchRecordData({
  String? firstname,
  String? lastname,
  String? email,
  String? domin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'domin': domin,
    }.withoutNulls,
  );

  return firestoreData;
}

class GetInTouchRecordDocumentEquality implements Equality<GetInTouchRecord> {
  const GetInTouchRecordDocumentEquality();

  @override
  bool equals(GetInTouchRecord? e1, GetInTouchRecord? e2) {
    return e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.email == e2?.email &&
        e1?.domin == e2?.domin;
  }

  @override
  int hash(GetInTouchRecord? e) => const ListEquality()
      .hash([e?.firstname, e?.lastname, e?.email, e?.domin]);

  @override
  bool isValidKey(Object? o) => o is GetInTouchRecord;
}
