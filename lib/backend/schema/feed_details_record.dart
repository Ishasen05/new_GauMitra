import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedDetailsRecord extends FirestoreRecord {
  FeedDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "feed_image" field.
  String? _feedImage;
  String get feedImage => _feedImage ?? '';
  bool hasFeedImage() => _feedImage != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "product_type" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone_no" field.
  int? _phoneNo;
  int get phoneNo => _phoneNo ?? 0;
  bool hasPhoneNo() => _phoneNo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "Nutrition" field.
  String? _nutrition;
  String get nutrition => _nutrition ?? '';
  bool hasNutrition() => _nutrition != null;

  void _initializeFields() {
    _feedImage = snapshotData['feed_image'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _productDescription = snapshotData['product_description'] as String?;
    _productType = snapshotData['product_type'] as String?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _unit = snapshotData['unit'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _name = snapshotData['name'] as String?;
    _phoneNo = castToType<int>(snapshotData['phone_no']);
    _email = snapshotData['email'] as String?;
    _location = snapshotData['location'] as String?;
    _state = snapshotData['state'] as String?;
    _nutrition = snapshotData['Nutrition'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Feed_Details');

  static Stream<FeedDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedDetailsRecord.fromSnapshot(s));

  static Future<FeedDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedDetailsRecord.fromSnapshot(s));

  static FeedDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedDetailsRecordData({
  String? feedImage,
  String? productName,
  String? productDescription,
  String? productType,
  int? quantity,
  String? unit,
  int? price,
  String? name,
  int? phoneNo,
  String? email,
  String? location,
  String? state,
  String? nutrition,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'feed_image': feedImage,
      'product_name': productName,
      'product_description': productDescription,
      'product_type': productType,
      'Quantity': quantity,
      'unit': unit,
      'price': price,
      'name': name,
      'phone_no': phoneNo,
      'email': email,
      'location': location,
      'state': state,
      'Nutrition': nutrition,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedDetailsRecordDocumentEquality implements Equality<FeedDetailsRecord> {
  const FeedDetailsRecordDocumentEquality();

  @override
  bool equals(FeedDetailsRecord? e1, FeedDetailsRecord? e2) {
    return e1?.feedImage == e2?.feedImage &&
        e1?.productName == e2?.productName &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productType == e2?.productType &&
        e1?.quantity == e2?.quantity &&
        e1?.unit == e2?.unit &&
        e1?.price == e2?.price &&
        e1?.name == e2?.name &&
        e1?.phoneNo == e2?.phoneNo &&
        e1?.email == e2?.email &&
        e1?.location == e2?.location &&
        e1?.state == e2?.state &&
        e1?.nutrition == e2?.nutrition;
  }

  @override
  int hash(FeedDetailsRecord? e) => const ListEquality().hash([
        e?.feedImage,
        e?.productName,
        e?.productDescription,
        e?.productType,
        e?.quantity,
        e?.unit,
        e?.price,
        e?.name,
        e?.phoneNo,
        e?.email,
        e?.location,
        e?.state,
        e?.nutrition
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedDetailsRecord;
}
