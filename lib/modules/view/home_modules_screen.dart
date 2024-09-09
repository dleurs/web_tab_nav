import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:web_tab_nav/navigation/domain/entity/app_module_entity.dart';
import 'package:web_tab_nav/navigation/view/cubit/tab_nav_cubit/tab_nav_cubit.dart';

class HomeModulesScreen extends StatelessWidget {
  const HomeModulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TabNavCubit, TabNavState>(
      listenWhen: (previous, current) =>
          current.goToPath != null && previous.goToPath != current.goToPath,
      listener: (context, state) {
        if (state.goToPath != null) {
          GoRouter.of(context).go(state.goToPath!);
          context.read<TabNavCubit>().resetGoToPath();
        }
      },
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                context.read<TabNavCubit>().openAModule(AppModuleType.counter);
              },
              child: const Text('Add counter module'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                context.read<TabNavCubit>().openAModule(AppModuleType.list);
              },
              child: const Text('Add list module'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                // TODO(dleurs): #4 Create common functions for that
                const path = '/counter/counter';
                context
                    .read<TabNavCubit>()
                    .maybeOpenModuleAndGo(Uri.parse(path));
                GoRouter.of(context).go(path);
              },
              child: const Text('Go to /counter/counter'),
            ),
          ],
        ),
      ),
    );
  }
}
