import 'dart:developer' as developer;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:web_tab_nav/navigation/domain/entity/app_module_entity.dart';
import 'package:web_tab_nav/navigation/view/cubit/tab_nav_cubit/tab_nav_cubit.dart';

/// Builds a nested shell using a [TabBar] and [TabBarView].
class TabbedRootScreen extends StatefulWidget {
  /// Constructs a TabbedRootScreen
  const TabbedRootScreen({
    required this.navigationShell,
    required this.children,
    super.key,
  });

  /// The current state of the parent StatefulShellRoute.
  final StatefulNavigationShell navigationShell;

  /// The children (branch Navigators) to display in the [TabBarView].
  final List<Widget> children;

  @override
  State<StatefulWidget> createState() => _TabbedRootScreenState();
}

class _TabbedRootScreenState extends State<TabbedRootScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  int? getCurrentTabIndex(BuildContext context) {
    final openModulesIndexes =
        context.read<TabNavCubit>().state.openModulesIndexesInAppModules;
    final tabIndex = openModulesIndexes
        .asMap()
        .entries
        .firstWhereOrNull(
            (entry) => entry.value == widget.navigationShell.currentIndex)
        ?.key;
    return tabIndex;
  }

  @override
  void initState() {
    final openModulesIndexes =
        context.read<TabNavCubit>().state.openModulesIndexesInAppModules;
    _tabController = TabController(
      length: openModulesIndexes.length,
      vsync: this,
      initialIndex: widget.navigationShell.currentIndex,
    );
    developer.log(
      '[TabbedRootScreen.initState] openModulesIndexes: $openModulesIndexes,  initialUiIndex: ${widget.navigationShell.currentIndex},  initialNavIndex: ${widget.navigationShell.currentIndex}',
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant TabbedRootScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    final tabIndex = getCurrentTabIndex(context);
    if (tabIndex != null) {
      developer.log('[TabbedRootScreen.didUpdateWidget] Begin');
      if (tabIndex < _tabController.length) {
        _tabController.index = tabIndex;
      }

      developer.log(
        '[TabbedRootScreen.didUpdateWidget] openModulesIndexes: ${context.read<TabNavCubit>().state.openModulesIndexesInAppModules},  newTabIndex: $tabIndex, navigationIndex: ${widget.navigationShell.currentIndex}',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    developer.log('[TabbedRootScreen.build]');
    return BlocListener<TabNavCubit, TabNavState>(
      listenWhen: (previous, current) =>
          current.goToAppModule != null &&
          previous.goToAppModule != current.goToAppModule,
      listener: (context, state) {
        if (state.goToAppModule != null) {
          widget.navigationShell.goBranch(state.goToAppModule!);
          context.read<TabNavCubit>().resetGoToModule();
        }
      },
      child: BlocSelector<TabNavCubit, TabNavState, List<int>>(
        selector: (state) => state.openModulesIndexesInAppModules,
        builder: (context, openModulesIndexes) {
          final tabs = <Widget>[];
          for (final openModulesIndex in openModulesIndexes) {
            final module = appModules[openModulesIndex];
            tabs.add(module.tabBuilder.call(context));
          }
          final widgets = List.generate(
            openModulesIndexes.length,
            (index) => widget.children[openModulesIndexes[index]],
          );

          final tabIndex = getCurrentTabIndex(context);

          developer.log('[TabbedRootScreen.BlocSelector.TabNavCubit] Begin');
          _tabController = TabController(
            initialIndex: tabIndex ?? 0,
            length: tabs.length,
            vsync: this,
          );
          developer.log(
            '[TabbedRootScreen.BlocSelector.TabNavCubit] openModulesIndexes: ,  newTabIndex: ,  navigationIndex: ${widget.navigationShell.currentIndex}',
          );

          return Material(
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  tabs: tabs,
                  onTap: (int tappedIndex) => _onTabTap(context, tappedIndex),
                  isScrollable: true,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: widgets,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onTabTap(BuildContext context, int tappedIndex) {
    final openModulesIndexes =
        context.read<TabNavCubit>().state.openModulesIndexesInAppModules;
    final navigationIndex = openModulesIndexes[tappedIndex];
    widget.navigationShell.goBranch(navigationIndex);
    developer.log(
      '[TabbedRootScreen.onTabTap] openModulesIndexes: $openModulesIndexes,  newNavigationIndex: $navigationIndex',
    );
  }
}
