
import 'package:lyrics_buddy/application/adapters/request_object.dart';

class SearchMusicRequestObject extends RequestObject {
  final String _query;

  SearchMusicRequestObject(this._query);

  String get query => _query;
}