
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
    ///This is how we alert the view that we're loading the values
    _outboundPort.onResult(SearchMusicResponseObject(
      [],
      true
    ));
    final List<Song> songs =  await _repository.searchMusic(requestObject.query);

    ///And we alert it again once the values have been retrieved
    final responseObject = SearchMusicResponseObject(
      songs.map((song) => SongResponseObject(
        song.title,
        song.lyrics,
        song.artist.name,
        song.artist.image,
        song.album.title,
        song.album.image
      )).toList(), false
    );

    _outboundPort.onResult(responseObject);
  }

}