
import 'package:lyrics_buddy/application/adapters/response_object.dart';

abstract class OutboundPort<T extends ResponseObject> {

  void onResult(T responseObject);
}