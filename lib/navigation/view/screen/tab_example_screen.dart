import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Widget for the pages in the top tab bar.
class ListExampleScreen extends StatelessWidget {
  /// Creates a RootScreen
  const ListExampleScreen({required this.label, required this.detailsPath, super.key});

  /// The label
  final String label;

  /// The path to the detail page
  final String? detailsPath;

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouter.of(context).routeInformationProvider.value.uri.path;
    return Scaffold(
      appBar: AppBar(
        title: Text('$currentPath, Label : $label'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text('Example $index'),
          onTap: () {
            if (detailsPath?.isNotEmpty ?? false) {
              GoRouter.of(context).go(detailsPath!);
            }
          },
        ),
        itemCount: 100,
      ),
    );
  }
}
