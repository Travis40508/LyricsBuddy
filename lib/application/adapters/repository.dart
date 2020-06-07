
import 'package:lyrics_buddy/domain/entities/song.dart';

abstract class Repository {
  Future<List<Song>> searchMusic(final String searchQuery);
  Future<String> searchMusicLyrics(final String searchQuery);
}