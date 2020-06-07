import 'package:flutter/material.dart';
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';
import 'package:lyrics_buddy/presentation/adapters/view_notifier.dart';

abstract class Screen<T extends ViewModel> extends StatefulWidget {

  final ViewNotifier _viewNotifier;

  Screen(this._viewNotifier);

  Widget buildView(T viewModel);
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
  void dispose() {
    widget._viewNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget._viewNotifier.fetchViewStream(),
      builder: (context, snapshot) {
        ///This will prevent exceptions until our initial data has loaded within our stream
        if (!snapshot.hasData) {
          return Container();
        }

        return widget.buildView(snapshot.data);
      },
    );
  }


}
