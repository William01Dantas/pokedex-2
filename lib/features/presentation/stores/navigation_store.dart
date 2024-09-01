import 'package:mobx/mobx.dart';

part 'navigation_store.g.dart';

class NavigationStore = NavigationStoreBase with _$NavigationStore;

abstract class NavigationStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void setIndex(
    int index,
  ) {
    selectedIndex = index;
  }
}
