import 'package:breakboint/approute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BreakPoint(
      appRouter: AppRouter(),
    ),
  );
}

class BreakPoint extends StatelessWidget {
  final AppRouter appRouter;

  const BreakPoint({Key? key, required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
