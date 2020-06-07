
import 'dart:async';

import 'package:lyrics_buddy/application/adapters/inbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_request_object.dart';
import 'package:lyrics_buddy/presentation/adapters/controller.dart';
import 'package:rxdart/rxdart.dart';

class SearchMusicController extends Controller {
  final InboundPort _inboundPort;

  SearchMusicController(this._inboundPort);

  void onTextChanged(final String query) {
    Stream.value(query).debounceTime(Duration(milliseconds: 500))
        .listen((query) => _inboundPort.execute(SearchMusicRequestObject(query)));
  }
}