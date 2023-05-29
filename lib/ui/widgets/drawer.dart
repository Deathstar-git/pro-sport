import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_sport/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double top = MediaQuery.of(context).padding.top;

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: top + 56,
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: EdgeInsets.only(
                top: top,
                left: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Pro',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Sport',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 10),
              children: activity.entries.map((item) {
                return _action(context, item);
              }).toList(),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 15, bottom: 15),
                child: Center(
                  child: Text(
                    'Версия: 1.0.0',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ], // Populate the Drawer in the next step.)
      ),
    );
  }
}

Widget _action(BuildContext context, dynamic item) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      Navigator.pop(context);
      context.goNamed("activity", params: {'id': item.key});
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Text(item.value, style: Theme.of(context).textTheme.headline6),
    ),
  );
}
