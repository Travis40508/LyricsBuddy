import 'package:flutter/material.dart';
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';
import 'package:lyrics_buddy/presentation/adapters/view_notifier.dart';

abstract class Screen<T extends ViewModel> extends StatefulWidget {

  final ViewNotifier _viewNotifier;

  Screen(this._viewNotifier);

  Widget onViewLoaded(T viewModel);
  Widget onViewLoading();
  void init();

  @override
  _ScreenState<T> createState() => _ScreenState();
}

class _ScreenState<T extends ViewModel> extends State<Screen> {

  @override
  void initState() {
    widget.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget._viewNotifier.fetchViewStream(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return widget.onViewLoading();
        }

        return widget.onViewLoaded(snapshot.data);
      },
    );
  }


}
