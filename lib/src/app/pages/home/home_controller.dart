import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import './home_presenter.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  PersistentTabController _tabController;
  PersistentTabController get tabController => _tabController;

  String _selectedFilter;
  String get selectedFilter => _selectedFilter;

  final HomePresenter homePresenter;

  HomeController(usersRepo)
      : _tabController = PersistentTabController(initialIndex: 0),
        _selectedFilter = 'All',
        homePresenter = HomePresenter(usersRepo),
        super();

  @override
  void initListeners() {}

  void onFilterChanged(String filter) {
    _selectedFilter = filter;
    refreshUI();
  }

  @override
  void onResumed() => print('On resumed');

  @override
  void onReassembled() => print('View is about to be reassembled');

  @override
  void onDeactivated() => print('View is about to be deactivated');

  @override
  void onDisposed() {
    homePresenter.dispose(); // don't forget to dispose of the presenter
    super.onDisposed();
  }
}
