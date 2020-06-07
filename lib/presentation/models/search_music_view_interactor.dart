
import 'package:lyrics_buddy/presentation/adapters/view_interactor.dart';
import 'package:lyrics_buddy/presentation/viewmodels/search_music_view_model.dart';

class SearchMusicViewInteractor extends ViewInteractor<SearchMusicViewModel> {

  SearchMusicViewInteractor() {
    ///This is where we pass in initial data for a screen
    updateView(fetchInitialData());
  }

  @override
  SearchMusicViewModel fetchInitialData() {
    return SearchMusicViewModel(
      'Music Search',
      0xFF448AFF,
      false,
      []
    );
  }
}