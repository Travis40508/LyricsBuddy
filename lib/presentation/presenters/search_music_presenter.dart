

import 'package:lyrics_buddy/application/adapters/outbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_response_object.dart';

class SearchMusicPresenter extends OutboundPort<SearchMusicResponseObject> {

  @override
  void onResult(final SearchMusicResponseObject responseObject) {
    // TODO: implement onResult
  }

}