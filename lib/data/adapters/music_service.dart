
import 'package:lyrics_buddy/domain/entities/song.dart';

abstract class MusicService {
  Future<List<Song>> fetchMusicFromSearch(final String searchQuery);
}