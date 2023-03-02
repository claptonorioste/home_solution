import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  String _selectedFilter;
  String get selectedFilter => _selectedFilter;

  HomeController()
      : _selectedFilter = 'All',
        super();

  void onFilterChanged(String filter) {
    _selectedFilter = filter;
    refreshUI();
  }

  @override
  void initListeners() {}
}
