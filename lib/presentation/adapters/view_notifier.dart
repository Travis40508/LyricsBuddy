
import 'package:lyrics_buddy/presentation/adapters/view_model.dart';

abstract class ViewNotifier<T extends ViewModel> {
  Stream<T> fetchViewStream();
}