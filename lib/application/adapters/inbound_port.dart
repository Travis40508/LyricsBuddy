
import 'package:lyrics_buddy/application/adapters/request_object.dart';

abstract class InboundPort<T extends RequestObject> {
  void execute(T requestObject);
}