
import 'package:cached_network_image/cached_network_image.dart';
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
  Widget buildView(SearchMusicViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(viewModel.appBarColor),
        title: Text(viewModel.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Ex. Eminem',
            ),
            onChanged: (query) => _controller.onTextChanged(query),
          ),
          viewModel.isLoading ? Center(child: CircularProgressIndicator()) : ListView.builder(
            itemCount: viewModel.songs.length,
            itemBuilder: (_, index) {
              final song = viewModel.songs[index];
              return Card(
                elevation: 4.0,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image(
                      image: CachedNetworkImageProvider(
                        song.image
                      ),
                    ),
                  ),
                  title: Text(
                    song.title
                  ),
                  subtitle: Text(
                    song.artistName
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void init() {
    //Todo
  }


}