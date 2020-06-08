
import 'dart:async';

import 'package:lyrics_buddy/application/adapters/inbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_request_object.dart';
import 'package:lyrics_buddy/presentation/adapters/controller.dart';

class SearchMusicController extends Controller {
  final InboundPort _inboundPort;
  Timer _timer;

  SearchMusicController(this._inboundPort);

  void onTextChanged(final String query) {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }

    if (query.isNotEmpty) {
      _timer = Timer(Duration(milliseconds: 500), () => _inboundPort.execute(SearchMusicRequestObject(query)));
    }
  }
}