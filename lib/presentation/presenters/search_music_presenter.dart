

import 'package:lyrics_buddy/application/adapters/outbound_port.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_response_object.dart';
import 'package:lyrics_buddy/presentation/adapters/view_updater.dart';
import 'package:lyrics_buddy/presentation/viewmodels/search_music_view_model.dart';
import 'package:lyrics_buddy/presentation/viewmodels/song_view_model.dart';

class SearchMusicPresenter extends OutboundPort<SearchMusicResponseObject> {

  final ViewUpdater _viewUpdater;

  SearchMusicPresenter(this._viewUpdater);

  @override
  void onResult(final SearchMusicResponseObject responseObject) {
    SearchMusicViewModel searchMusicViewModel = SearchMusicViewModel(
      'Music Search',
      0xFF448AFF,
      responseObject.isFetchingSongs,
      responseObject.songs.map((songResponse) => SongViewModel(
        songResponse.songTitle,
        songResponse.artistName,
        songResponse.albumImage != null && songResponse.albumImage.isNotEmpty ? songResponse.albumImage : songResponse.artistImage
      )).toList()
    );

    _viewUpdater.updateView(searchMusicViewModel);
  }

}