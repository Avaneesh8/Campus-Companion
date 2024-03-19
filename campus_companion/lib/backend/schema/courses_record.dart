import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  // "app_dev_level" field.
  int? _appDevLevel;
  int get appDevLevel => _appDevLevel ?? 0;
  bool hasAppDevLevel() => _appDevLevel != null;

  // "DSA_level" field.
  int? _dSALevel;
  int get dSALevel => _dSALevel ?? 0;
  bool hasDSALevel() => _dSALevel != null;

  // "college" field.
  String? _college;
  String get college => _college ?? '';
  bool hasCollege() => _college != null;

  // "qualification_level" field.
  int? _qualificationLevel;
  int get qualificationLevel => _qualificationLevel ?? 0;
  bool hasQualificationLevel() => _qualificationLevel != null;

  // "video_link" field.
  String? _videoLink;
  String get videoLink => _videoLink ?? '';
  bool hasVideoLink() => _videoLink != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _heading = snapshotData['heading'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _premium = snapshotData['premium'] as bool?;
    _appDevLevel = castToType<int>(snapshotData['app_dev_level']);
    _dSALevel = castToType<int>(snapshotData['DSA_level']);
    _college = snapshotData['college'] as String?;
    _qualificationLevel = castToType<int>(snapshotData['qualification_level']);
    _videoLink = snapshotData['video_link'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? image,
  String? heading,
  double? rating,
  bool? premium,
  int? appDevLevel,
  int? dSALevel,
  String? college,
  int? qualificationLevel,
  String? videoLink,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'heading': heading,
      'rating': rating,
      'premium': premium,
      'app_dev_level': appDevLevel,
      'DSA_level': dSALevel,
      'college': college,
      'qualification_level': qualificationLevel,
      'video_link': videoLink,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.heading == e2?.heading &&
        e1?.rating == e2?.rating &&
        e1?.premium == e2?.premium &&
        e1?.appDevLevel == e2?.appDevLevel &&
        e1?.dSALevel == e2?.dSALevel &&
        e1?.college == e2?.college &&
        e1?.qualificationLevel == e2?.qualificationLevel &&
        e1?.videoLink == e2?.videoLink &&
        e1?.description == e2?.description;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.image,
        e?.heading,
        e?.rating,
        e?.premium,
        e?.appDevLevel,
        e?.dSALevel,
        e?.college,
        e?.qualificationLevel,
        e?.videoLink,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
