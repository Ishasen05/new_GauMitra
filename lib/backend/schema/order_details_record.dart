import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderDetailsRecord extends FirestoreRecord {
  OrderDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_No" field.
  int? _phoneNo;
  int get phoneNo => _phoneNo ?? 0;
  bool hasPhoneNo() => _phoneNo != null;

  // "streetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "Apartment" field.
  String? _apartment;
  String get apartment => _apartment ?? '';
  bool hasApartment() => _apartment != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "postalcode" field.
  String? _postalcode;
  String get postalcode => _postalcode ?? '';
  bool hasPostalcode() => _postalcode != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNo = castToType<int>(snapshotData['phone_No']);
    _streetAddress = snapshotData['streetAddress'] as String?;
    _apartment = snapshotData['Apartment'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _postalcode = snapshotData['postalcode'] as String?;
    _product = snapshotData['product'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order_details');

  static Stream<OrderDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderDetailsRecord.fromSnapshot(s));

  static Future<OrderDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderDetailsRecord.fromSnapshot(s));

  static OrderDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderDetailsRecordData({
  String? name,
  String? email,
  int? phoneNo,
  String? streetAddress,
  String? apartment,
  String? city,
  String? state,
  String? postalcode,
  String? product,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'email': email,
      'phone_No': phoneNo,
      'streetAddress': streetAddress,
      'Apartment': apartment,
      'city': city,
      'state': state,
      'postalcode': postalcode,
      'product': product,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderDetailsRecordDocumentEquality
    implements Equality<OrderDetailsRecord> {
  const OrderDetailsRecordDocumentEquality();

  @override
  bool equals(OrderDetailsRecord? e1, OrderDetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.phoneNo == e2?.phoneNo &&
        e1?.streetAddress == e2?.streetAddress &&
        e1?.apartment == e2?.apartment &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.postalcode == e2?.postalcode &&
        e1?.product == e2?.product;
  }

  @override
  int hash(OrderDetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.phoneNo,
        e?.streetAddress,
        e?.apartment,
        e?.city,
        e?.state,
        e?.postalcode,
        e?.product
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderDetailsRecord;
}
