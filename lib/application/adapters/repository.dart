
import 'package:lyrics_buddy/domain/entities/song.dart';

abstract class Repository {
  List<Song> searchMusic(final String searchQuery);
  String searchMusicLyrics(final String searchQuery);
}