import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PlaceBloc implements Bloc {
  // final _placeController = StreamController<Place>.broadcast();

  // Function(Place) get changePlace => _placeController.sink.add;

  // Stream<Place> get placeStream => _placeController.stream;

  @override
  void dispose() {
    //_placeController.close();
  }
}