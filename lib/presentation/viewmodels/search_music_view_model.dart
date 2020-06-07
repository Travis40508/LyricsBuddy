
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';

class SearchMusicViewModel extends ViewModel {
  final String _title;

  SearchMusicViewModel(this._title);

  String get title => _title;
}