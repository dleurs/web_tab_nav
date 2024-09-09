import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:web_tab_nav/counter/view/counter_page.dart';
import 'package:web_tab_nav/modules/view/home_modules_screen.dart';
import 'package:web_tab_nav/navigation/view/cubit/tab_nav_cubit/tab_nav_cubit.dart';
import 'package:web_tab_nav/navigation/view/screen/tab_example_screen.dart';
import 'dart:developer' as developer;

part 'app_module_entity.freezed.dart';

@freezed
class AppModuleEntity with _$AppModuleEntity {
  const factory AppModuleEntity({
    // TODO(dleurs): #4 Maybe create named constructor / with sealed ?
    required AppModuleType type,
    required String displayName,
    required StatefulShellBranch routingShell,
    required Tab Function(BuildContext) tabBuilder,
    @Default(false) isOpennedAtStart,
  }) = _AppModuleEntity;
}

enum AppModuleType {
  home('/home'),
  counter('/counter'),
  list('/list');

  const AppModuleType(this.firstPath);
  final String firstPath;
}

final appModules = [
  AppModuleEntity(
    type: AppModuleType.home,
    isOpennedAtStart: true,
    displayName: 'Home',
    tabBuilder: (_) => const Tab(icon: Icon(Icons.apps)),
    routingShell: StatefulShellBranch(
      routes: <GoRoute>[
        GoRoute(
          path: AppModuleType.home.firstPath,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeModulesScreen(),
        ),
      ],
    ),
  ),
  AppModuleEntity(
    type: AppModuleType.counter,
    displayName: 'Counter',
    tabBuilder: (context) => Tab(
      child: Row(
        children: [
          const Text('Counter'),
          const SizedBox(width: 6),
          IconButton(
            onPressed: () {
              final currentPath =
                  GoRouter.of(context).routeInformationProvider.value.uri.path;
              final isClosingCurrentTab =
                  currentPath.contains(AppModuleType.counter.firstPath);
              context.read<TabNavCubit>().closeAModule(AppModuleType.counter,
                  isClosingCurrentTab: isClosingCurrentTab);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    ),
    routingShell: StatefulShellBranch(
      routes: <GoRoute>[
        GoRoute(
          path: AppModuleType.counter.firstPath,
          builder: (BuildContext context, GoRouterState state) =>
              const ListExampleScreen(
                  label: 'Counter', detailsPath: '/counter/counter'),
          routes: <RouteBase>[
            GoRoute(
              path: 'counter',
              builder: (BuildContext context, GoRouterState state) =>
                  const CounterPage(),
            ),
          ],
        ),
      ],
    ),
  ),
  AppModuleEntity(
    type: AppModuleType.list,
    displayName: 'List',
    tabBuilder: (context) => Tab(
      child: Row(
        children: [
          const Text('List'),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () {
              final currentPath =
                  GoRouter.of(context).routeInformationProvider.value.uri.path;
              final isClosingCurrentTab =
                  currentPath.contains(AppModuleType.list.firstPath);
              context.read<TabNavCubit>().closeAModule(AppModuleType.list,
                  isClosingCurrentTab: isClosingCurrentTab);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    ),
    routingShell: StatefulShellBranch(
      routes: <GoRoute>[
        GoRoute(
          path: AppModuleType.list.firstPath,
          builder: (BuildContext context, GoRouterState state) =>
              const ListExampleScreen(label: 'List', detailsPath: ''),
        ),
      ],
    ),
  ),
];
