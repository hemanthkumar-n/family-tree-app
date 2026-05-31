import 'package:flutter/material.dart';
import '../domain/viewer_context.dart';

class ViewerSelector extends StatefulWidget {
  const ViewerSelector({super.key});

  @override
  State<ViewerSelector> createState() => _ViewerSelectorState();
}

class _ViewerSelectorState extends State<ViewerSelector> {
  final viewers = [
    'hemanth',
    'keerthi',
    'yuvan',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: ViewerContext.currentViewerId,
      items: viewers
          .map(
            (v) => DropdownMenuItem(
              value: v,
              child: Text(v.toUpperCase()),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          ViewerContext.currentViewerId = value!;
        });
      },
    );
  }
}
