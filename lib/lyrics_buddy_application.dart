import 'package:flutter/material.dart';
import 'package:lyrics_buddy/application/usecases/search_music_use_case.dart';
import 'package:lyrics_buddy/data/repository/music_repository.dart';
import 'package:lyrics_buddy/data/services/deezer_service.dart';
import 'package:lyrics_buddy/presentation/controllers/search_music_controller.dart';
import 'package:lyrics_buddy/presentation/models/search_music_view_interactor.dart';
import 'package:lyrics_buddy/presentation/presenters/search_music_presenter.dart';
import 'package:lyrics_buddy/ui/screens/search_music_screen.dart';

class LyricsBuddyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lyrics Buddy',
      initialRoute: '/',
      routes: {
        '/': (context) => _fetchSearchMusicScreen()
      },
    );
  }

  Widget _fetchSearchMusicScreen() {
    final searchMusicInteractor = SearchMusicViewInteractor();
    final service = DeezerService();
    final repository = MusicRepository(service);
    final presenter = SearchMusicPresenter(searchMusicInteractor);
    final usecase = SearchMusicUseCase(repository, presenter);
    final controller = SearchMusicController(usecase);

    final SearchMusicScreen screen = SearchMusicScreen(controller, searchMusicInteractor);

    return screen;
  }
}
