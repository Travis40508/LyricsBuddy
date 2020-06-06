

import 'album.dart';
import 'artist.dart';

class Song {
  final _id;
  final String _title;
  final String _lyrics;
  final Artist _artist;
  final Album _album;

  Song(this._id, this._title, this._lyrics, this._artist, this._album);

  Album get album => _album;

  Artist get artist => _artist;

  String get lyrics => _lyrics;

  String get title => _title;

  get id => _id;
}