

import 'package:lyrics_buddy/presentation/adapters/view_model.dart';

abstract class ViewUpdater<T extends ViewModel> {

  void updateView(T viewModel);
}