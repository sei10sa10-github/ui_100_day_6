import 'package:state_notifier/state_notifier.dart';
import 'package:ui_100_day_6/common/models/ui_state.dart';
import 'package:ui_100_day_6/common/services/excersize_service.dart';
import 'package:ui_100_day_6/home/models/home_state.dart';

class HomeController extends StateNotifier<HomeState> with LocatorMixin {

  ExcersizeService get _service => read<ExcersizeService>();

  HomeController(state) : super(state);
  
  @override
  void initState() {
    load();
  }

  void load() async {
    if (state.uiState == UiState.loading) return; 

    state = state.copyWith(uiState: UiState.loading);

    await Future.delayed(Duration(milliseconds: 1500));
    final excersize = await _service.getExcersize();

    state = HomeState(UiState.loaded, excersize);
  }
}