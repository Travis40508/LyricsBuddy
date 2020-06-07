
import 'package:lyrics_buddy/application/adapters/inbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_request_object.dart';
import 'package:lyrics_buddy/presentation/adapters/controller.dart';

class SearchMusicController extends Controller {
  final InboundPort _inboundPort;

  SearchMusicController(this._inboundPort);

  void testing() {
    _inboundPort.execute(SearchMusicRequestObject('eminem'));
  }
}