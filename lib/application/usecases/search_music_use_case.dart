
import 'package:lyrics_buddy/application/adapters/inbound_port.dart';
import 'package:lyrics_buddy/application/adapters/outbound_port.dart';
import 'package:lyrics_buddy/application/adapters/repository.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_request_object.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_response_object.dart';
import 'package:lyrics_buddy/application/datastructures/song_response_object.dart';
import 'package:lyrics_buddy/domain/entities/song.dart';

class SearchMusicUseCase extends InboundPort<SearchMusicRequestObject> {

  final Repository _repository;
  final OutboundPort _outboundPort;

  SearchMusicUseCase(this._repository, this._outboundPort);

  @override
  void execute(final SearchMusicRequestObject requestObject) async {
    final List<Song> songs =  await _repository.searchMusic(requestObject.query);
    
    final responseObject = SearchMusicResponseObject(
      songs.map((song) => SongResponseObject(
        song.title,
        song.lyrics,
        song.artist.name,
        song.artist.image,
        song.album.title,
        song.album.image
      )).toList()
    );

    _outboundPort.onResult(responseObject);
  }

}