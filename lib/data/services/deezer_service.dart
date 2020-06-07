
import 'dart:convert';

import 'package:lyrics_buddy/data/adapters/music_service.dart';
import 'package:lyrics_buddy/domain/entities/album.dart';
import 'package:lyrics_buddy/domain/entities/artist.dart';
import 'package:lyrics_buddy/domain/entities/song.dart';
import 'package:http/http.dart' show Client;

class DeezerService implements MusicService {

  final String _baseUrl = 'https://api.deezer.com';
  final String _searchParam = '/search';

  final _client = Client();

  @override
  Future<List<Song>> fetchMusicFromSearch(String searchQuery) async {
    final url = '$_baseUrl$_searchParam?q=$searchQuery';
    final res = await _client.get(url);
    final json = jsonDecode(res.body);

    List<Song> songs = (json['data'] as List).map((deezerSong) {
      final song = Song(
        deezerSong['id'],
        deezerSong['title'],
        '',
        Artist(
          deezerSong['artist']['id'],
          deezerSong['artist']['name'],
          deezerSong['artist']['picture']
        ),
        Album(
          deezerSong['album']['id'],
          deezerSong['album']['title'],
          deezerSong['album']['cover']
        )
      );
      return song;
    }).toList();

    return songs;
  }

}