import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestore = CloudFirestoreAPI();
  void updateUserDataFirestore(userData) =>
      _cloudFirestore.updateUserDate(userData);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestore.updatePlaceDate(place);
}
