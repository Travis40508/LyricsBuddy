
import 'package:lyrics_buddy/application/adapters/response_object.dart';

class SongResponseObject extends ResponseObject {
  final String _songTitle;
  final String _songLyrics;

  final String _artistName;
  final String _artistImage;

  final String _albumTitle;
  final String _albumImage;

  SongResponseObject(this._songTitle, this._songLyrics, this._artistName,
      this._artistImage, this._albumTitle, this._albumImage);

  String get albumImage => _albumImage;

  String get albumTitle => _albumTitle;

  String get artistImage => _artistImage;

  String get artistName => _artistName;

  String get songLyrics => _songLyrics;

  String get songTitle => _songTitle;
}