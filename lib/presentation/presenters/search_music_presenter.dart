

import 'package:lyrics_buddy/application/adapters/outbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_response_object.dart';
import 'package:lyrics_buddy/presentation/adapters/view_updater.dart';
import 'package:lyrics_buddy/presentation/viewmodels/search_music_view_model.dart';

class SearchMusicPresenter extends OutboundPort<SearchMusicResponseObject> {

  final ViewUpdater _viewUpdater;

  SearchMusicPresenter(this._viewUpdater);

  @override
  void onResult(final SearchMusicResponseObject responseObject) {
    SearchMusicViewModel searchMusicViewModel = SearchMusicViewModel(responseObject.songs[0].songTitle);

    _viewUpdater.updateView(searchMusicViewModel);
  }

}