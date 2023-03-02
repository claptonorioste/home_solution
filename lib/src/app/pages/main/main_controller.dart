import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'main_presenter.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MainController extends Controller {
  PersistentTabController _tabController;
  PersistentTabController get tabController => _tabController;

  final MainPresenter mainPresenter;

  MainController(usersRepo)
      : _tabController = PersistentTabController(initialIndex: 0),
        mainPresenter = MainPresenter(usersRepo),
        super();

  @override
  void initListeners() {}

  @override
  void onResumed() => print('On resumed');

  @override
  void onReassembled() => print('View is about to be reassembled');

  @override
  void onDeactivated() => print('View is about to be deactivated');

  @override
  void onDisposed() {
    mainPresenter.dispose(); // don't forget to dispose of the presenter
    super.onDisposed();
  }
}
