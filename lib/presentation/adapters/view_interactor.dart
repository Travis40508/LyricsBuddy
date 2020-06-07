
import 'dart:async';

import 'package:lyrics_buddy/presentation/adapters/view_model.dart';
import 'package:lyrics_buddy/presentation/adapters/view_notifier.dart';
import 'package:lyrics_buddy/presentation/adapters/view_updater.dart';

abstract class ViewInteractor<T extends ViewModel> implements ViewUpdater<T>, ViewNotifier<T> {
  StreamController<T> _streamController = StreamController();

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void updateView(T viewModel) {
    _streamController.add(viewModel);
  }

  @override
  Stream<T> fetchViewStream() {
    return _streamController.stream;
  }
}