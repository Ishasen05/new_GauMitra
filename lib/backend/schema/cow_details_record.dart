import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CowDetailsRecord extends FirestoreRecord {
  CowDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Cow_owner" field.
  String? _cowOwner;
  String get cowOwner => _cowOwner ?? '';
  bool hasCowOwner() => _cowOwner != null;

  // "milk_litre" field.
  int? _milkLitre;
  int get milkLitre => _milkLitre ?? 0;
  bool hasMilkLitre() => _milkLitre != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "calving_status" field.
  String? _calvingStatus;
  String get calvingStatus => _calvingStatus ?? '';
  bool hasCalvingStatus() => _calvingStatus != null;

  // "breed" field.
  String? _breed;
  String get breed => _breed ?? '';
  bool hasBreed() => _breed != null;

  // "Owner_Phone_no" field.
  double? _ownerPhoneNo;
  double get ownerPhoneNo => _ownerPhoneNo ?? 0.0;
  bool hasOwnerPhoneNo() => _ownerPhoneNo != null;

  // "Owner_address" field.
  String? _ownerAddress;
  String get ownerAddress => _ownerAddress ?? '';
  bool hasOwnerAddress() => _ownerAddress != null;

  // "bull_or_cow" field.
  String? _bullOrCow;
  String get bullOrCow => _bullOrCow ?? '';
  bool hasBullOrCow() => _bullOrCow != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "cow_ID" field.
  int? _cowID;
  int get cowID => _cowID ?? 0;
  bool hasCowID() => _cowID != null;

  // "Health_status" field.
  String? _healthStatus;
  String get healthStatus => _healthStatus ?? '';
  bool hasHealthStatus() => _healthStatus != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  void _initializeFields() {
    _age = castToType<int>(snapshotData['age']);
    _image = snapshotData['image'] as String?;
    _cowOwner = snapshotData['Cow_owner'] as String?;
    _milkLitre = castToType<int>(snapshotData['milk_litre']);
    _description = snapshotData['description'] as String?;
    _color = snapshotData['color'] as String?;
    _calvingStatus = snapshotData['calving_status'] as String?;
    _breed = snapshotData['breed'] as String?;
    _ownerPhoneNo = castToType<double>(snapshotData['Owner_Phone_no']);
    _ownerAddress = snapshotData['Owner_address'] as String?;
    _bullOrCow = snapshotData['bull_or_cow'] as String?;
    _weight = castToType<int>(snapshotData['weight']);
    _cowID = castToType<int>(snapshotData['cow_ID']);
    _healthStatus = snapshotData['Health_status'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _state = snapshotData['state'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cow_details');

  static Stream<CowDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CowDetailsRecord.fromSnapshot(s));

  static Future<CowDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CowDetailsRecord.fromSnapshot(s));

  static CowDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CowDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CowDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CowDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CowDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CowDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCowDetailsRecordData({
  int? age,
  String? image,
  String? cowOwner,
  int? milkLitre,
  String? description,
  String? color,
  String? calvingStatus,
  String? breed,
  double? ownerPhoneNo,
  String? ownerAddress,
  String? bullOrCow,
  int? weight,
  int? cowID,
  String? healthStatus,
  int? price,
  String? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'age': age,
      'image': image,
      'Cow_owner': cowOwner,
      'milk_litre': milkLitre,
      'description': description,
      'color': color,
      'calving_status': calvingStatus,
      'breed': breed,
      'Owner_Phone_no': ownerPhoneNo,
      'Owner_address': ownerAddress,
      'bull_or_cow': bullOrCow,
      'weight': weight,
      'cow_ID': cowID,
      'Health_status': healthStatus,
      'price': price,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class CowDetailsRecordDocumentEquality implements Equality<CowDetailsRecord> {
  const CowDetailsRecordDocumentEquality();

  @override
  bool equals(CowDetailsRecord? e1, CowDetailsRecord? e2) {
    return e1?.age == e2?.age &&
        e1?.image == e2?.image &&
        e1?.cowOwner == e2?.cowOwner &&
        e1?.milkLitre == e2?.milkLitre &&
        e1?.description == e2?.description &&
        e1?.color == e2?.color &&
        e1?.calvingStatus == e2?.calvingStatus &&
        e1?.breed == e2?.breed &&
        e1?.ownerPhoneNo == e2?.ownerPhoneNo &&
        e1?.ownerAddress == e2?.ownerAddress &&
        e1?.bullOrCow == e2?.bullOrCow &&
        e1?.weight == e2?.weight &&
        e1?.cowID == e2?.cowID &&
        e1?.healthStatus == e2?.healthStatus &&
        e1?.price == e2?.price &&
        e1?.state == e2?.state;
  }

  @override
  int hash(CowDetailsRecord? e) => const ListEquality().hash([
        e?.age,
        e?.image,
        e?.cowOwner,
        e?.milkLitre,
        e?.description,
        e?.color,
        e?.calvingStatus,
        e?.breed,
        e?.ownerPhoneNo,
        e?.ownerAddress,
        e?.bullOrCow,
        e?.weight,
        e?.cowID,
        e?.healthStatus,
        e?.price,
        e?.state
      ]);

  @override
  bool isValidKey(Object? o) => o is CowDetailsRecord;
}
