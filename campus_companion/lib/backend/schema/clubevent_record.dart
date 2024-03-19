import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubeventRecord extends FirestoreRecord {
  ClubeventRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "club_name" field.
  String? _clubName;
  String get clubName => _clubName ?? '';
  bool hasClubName() => _clubName != null;

  // "event_type" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "club_logo" field.
  String? _clubLogo;
  String get clubLogo => _clubLogo ?? '';
  bool hasClubLogo() => _clubLogo != null;

  // "event_logo" field.
  String? _eventLogo;
  String get eventLogo => _eventLogo ?? '';
  bool hasEventLogo() => _eventLogo != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "maximum_member" field.
  int? _maximumMember;
  int get maximumMember => _maximumMember ?? 0;
  bool hasMaximumMember() => _maximumMember != null;

  // "qualification_level" field.
  int? _qualificationLevel;
  int get qualificationLevel => _qualificationLevel ?? 0;
  bool hasQualificationLevel() => _qualificationLevel != null;

  void _initializeFields() {
    _clubName = snapshotData['club_name'] as String?;
    _eventType = snapshotData['event_type'] as String?;
    _status = snapshotData['status'] as bool?;
    _clubLogo = snapshotData['club_logo'] as String?;
    _eventLogo = snapshotData['event_logo'] as String?;
    _duration = snapshotData['duration'] as String?;
    _maximumMember = castToType<int>(snapshotData['maximum_member']);
    _qualificationLevel = castToType<int>(snapshotData['qualification_level']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubevent');

  static Stream<ClubeventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubeventRecord.fromSnapshot(s));

  static Future<ClubeventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubeventRecord.fromSnapshot(s));

  static ClubeventRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClubeventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubeventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubeventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubeventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubeventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubeventRecordData({
  String? clubName,
  String? eventType,
  bool? status,
  String? clubLogo,
  String? eventLogo,
  String? duration,
  int? maximumMember,
  int? qualificationLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'club_name': clubName,
      'event_type': eventType,
      'status': status,
      'club_logo': clubLogo,
      'event_logo': eventLogo,
      'duration': duration,
      'maximum_member': maximumMember,
      'qualification_level': qualificationLevel,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubeventRecordDocumentEquality implements Equality<ClubeventRecord> {
  const ClubeventRecordDocumentEquality();

  @override
  bool equals(ClubeventRecord? e1, ClubeventRecord? e2) {
    return e1?.clubName == e2?.clubName &&
        e1?.eventType == e2?.eventType &&
        e1?.status == e2?.status &&
        e1?.clubLogo == e2?.clubLogo &&
        e1?.eventLogo == e2?.eventLogo &&
        e1?.duration == e2?.duration &&
        e1?.maximumMember == e2?.maximumMember &&
        e1?.qualificationLevel == e2?.qualificationLevel;
  }

  @override
  int hash(ClubeventRecord? e) => const ListEquality().hash([
        e?.clubName,
        e?.eventType,
        e?.status,
        e?.clubLogo,
        e?.eventLogo,
        e?.duration,
        e?.maximumMember,
        e?.qualificationLevel
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubeventRecord;
}
