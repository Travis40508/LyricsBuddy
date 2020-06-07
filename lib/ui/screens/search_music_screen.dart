
import 'package:flutter/material.dart';
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';
import 'package:lyrics_buddy/presentation/adapters/view_notifier.dart';
import 'package:lyrics_buddy/presentation/controllers/search_music_controller.dart';
import 'package:lyrics_buddy/presentation/viewmodels/search_music_view_model.dart';
import 'package:lyrics_buddy/ui/adapters/screen.dart';

class SearchMusicScreen extends Screen<SearchMusicViewModel> {

  final SearchMusicController _controller;

  SearchMusicScreen(this._controller, ViewNotifier<ViewModel> viewNotifier) : super(viewNotifier);

  @override
  Widget onViewLoaded(SearchMusicViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(viewModel.title),
      ),
    );
  }

  @override
  Widget onViewLoading() {
    return CircularProgressIndicator();
  }

  @override
  void init() {
    _controller.testing();
  }


}