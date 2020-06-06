
import 'package:lyrics_buddy/application/adapters/inbound_port.dart';
import 'package:lyrics_buddy/application/adapters/repository.dart';
import 'package:lyrics_buddy/application/datastructures/search_music_request_object.dart';

class SearchMusicUseCase extends InboundPort<SearchMusicRequestObject> {

  final Repository _repository;

  SearchMusicUseCase(this._repository);

  @override
  void execute(final SearchMusicRequestObject requestObject) {

  }

}