part of 'tab_nav_cubit.dart';

@freezed
abstract class TabNavState with _$TabNavState {
  factory TabNavState({
    required List<int> openModulesIndexesInAppModules,
    int? goToAppModule,
    String? goToPath,
  }) = _TabNavState;
}
