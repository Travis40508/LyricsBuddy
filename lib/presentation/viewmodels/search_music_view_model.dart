
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';
import 'package:lyrics_buddy/presentation/viewmodels/song_view_model.dart';

class SearchMusicViewModel extends ViewModel {
  final String _title;
  final int _appBarColor;
  final bool _isLoading;
  final List<SongViewModel> _songs;

  SearchMusicViewModel(this._title, this._appBarColor, this._isLoading, this._songs);

  String get title => _title;

  List<SongViewModel> get songs => _songs;

  bool get isLoading => _isLoading;

  int get appBarColor => _appBarColor;
}