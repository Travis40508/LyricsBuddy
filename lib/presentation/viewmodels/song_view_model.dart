

import 'package:lyrics_buddy/presentation/adapters/view_model.dart';

class SongViewModel extends ViewModel {
  final String _title;
  final String _artistName;
  final String _image;

  SongViewModel(this._title, this._artistName, this._image);

  String get image => _image;

  String get artistName => _artistName;

  String get title => _title;
}