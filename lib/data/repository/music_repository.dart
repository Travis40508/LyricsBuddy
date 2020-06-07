

import 'package:lyrics_buddy/application/adapters/repository.dart';
import 'package:lyrics_buddy/data/adapters/music_service.dart';
import 'package:lyrics_buddy/domain/entities/song.dart';

class MusicRepository implements Repository {

  final MusicService _musicService;

  MusicRepository(this._musicService);

  @override
  Future<List<Song>> searchMusic(String searchQuery) {
    return _musicService.fetchMusicFromSearch(searchQuery);
  }

  @override
  Future<String> searchMusicLyrics(String searchQuery) {
    // TODO: implement searchMusicLyrics
  }

}