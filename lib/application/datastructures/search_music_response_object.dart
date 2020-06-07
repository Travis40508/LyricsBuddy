
import 'package:lyrics_buddy/application/adapters/response_object.dart';
import 'package:lyrics_buddy/application/datastructures/song_response_object.dart';

class SearchMusicResponseObject extends ResponseObject {
  final bool _isFetchingSongs;
  final List<SongResponseObject> _songs;

  SearchMusicResponseObject(this._songs, this._isFetchingSongs);

  List<SongResponseObject> get songs => _songs;

  bool get isFetchingSongs => _isFetchingSongs;
}