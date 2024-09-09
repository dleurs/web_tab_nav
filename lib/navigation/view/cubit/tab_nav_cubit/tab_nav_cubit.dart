import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_tab_nav/navigation/domain/entity/app_module_entity.dart';

part 'tab_nav_state.dart';
part 'tab_nav_cubit.freezed.dart';

class TabNavCubit extends Cubit<TabNavState> {
  TabNavCubit()
      : super(
          TabNavState(
            openModulesIndexesInAppModules: appModules
                .asMap()
                .entries
                .where((entry) => entry.value.isOpennedAtStart == true)
                .map((entry) => entry.key)
                .toList(),
          ),
        );

  int? getModuleIndexInAppModule(AppModuleType type) => appModules
      .asMap()
      .entries
      .firstWhereOrNull((module) => module.value.type == type)
      ?.key;

  void maybeOpenModuleAndGo(Uri uri) {
    final firstPath = uri.pathSegments.first;
    final uriModuleType = AppModuleType.values.firstWhereOrNull(
        (moduleType) => moduleType.firstPath.contains(firstPath));
    if (uriModuleType != null) {
      final index = getModuleIndexInAppModule(uriModuleType);
      if (index != null) {
        if (!state.openModulesIndexesInAppModules.contains(index)) {
          openAModule(uriModuleType);
        }
        emit(state.copyWith(goToPath: uri.path));
      }
    }
  }

  void resetGoToPath() => emit(state.copyWith(goToPath: null));

  void resetGoToModule() => emit(state.copyWith(goToAppModule: null));

  void openAModule(AppModuleType type) {
    final moduleIndexInAppModule = getModuleIndexInAppModule(type);
    if (moduleIndexInAppModule != null &&
        state.openModulesIndexesInAppModules.contains(moduleIndexInAppModule) ==
            false) {
      final newModuleList = [
        ...state.openModulesIndexesInAppModules,
        moduleIndexInAppModule
      ];
      emit(
        state.copyWith(
          openModulesIndexesInAppModules: newModuleList,
          goToAppModule: moduleIndexInAppModule,
        ),
      );
    }
  }

  void closeAModule(
    AppModuleType type, {
    required bool isClosingCurrentTab,
  }) {
    final moduleIndexInAppModule = appModules
        .asMap()
        .entries
        .firstWhereOrNull((module) => module.value.type == type)
        ?.key;
    if (moduleIndexInAppModule != null) {
      final newModuleList = List.of(state.openModulesIndexesInAppModules)
        ..remove(moduleIndexInAppModule);
      emit(state.copyWith(openModulesIndexesInAppModules: newModuleList));
      if (isClosingCurrentTab) {
        emit(state.copyWith(goToAppModule: 0));
      }
    }
  }
}
