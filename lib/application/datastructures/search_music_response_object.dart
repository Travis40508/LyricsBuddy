
import 'package:lyrics_buddy/application/adapters/response_object.dart';
import 'package:lyrics_buddy/application/datastructures/song_response_object.dart';

class SearchMusicResponseObject extends ResponseObject {
  final List<SongResponseObject> _songs;

  SearchMusicResponseObject(this._songs);

  List<SongResponseObject> get songs => _songs;
}