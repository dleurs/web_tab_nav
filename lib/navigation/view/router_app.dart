import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:web_tab_nav/navigation/domain/entity/app_module_entity.dart';
import 'package:web_tab_nav/navigation/view/cubit/tab_nav_cubit/tab_nav_cubit.dart';
import 'package:web_tab_nav/navigation/view/tabbed_root_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class RouterApp extends StatelessWidget {
  RouterApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppModuleType.home.firstPath,
    routes: <RouteBase>[
      StatefulShellRoute(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          // Just like with the top level StatefulShellRoute, no
          // customization is done in the builder function.
          return navigationShell;
        },
        navigatorContainerBuilder: (
          BuildContext context,
          StatefulNavigationShell navigationShell,
          List<Widget> children,
        ) {
          // Returning a customized container for the branch
          // Navigators (i.e. the `List<Widget> children` argument).
          //
          // See TabbedRootScreen for more details on how the children
          // are managed (in a TabBarView).
          return TabbedRootScreen(
            navigationShell: navigationShell,
            children: children,
          );
        },
        // This bottom tab uses a nested shell, wrapping sub routes in a
        // top TabBar.
        branches: appModules.map((module) => module.routingShell).toList(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabNavCubit(),
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        //localizationsDelegates: AppLocalizations.localizationsDelegates,
        //supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
