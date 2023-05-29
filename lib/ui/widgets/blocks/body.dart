import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/theme/styles.dart';

class Body extends StatelessWidget {
  final List<Widget> children;
  final dynamic store;
  final dynamic refresh;

  const Body({
    Key? key,
    required this.children,
    this.store,
    this.refresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration(context)),
        RefreshIndicator(
          onRefresh: () async => refresh == null ? () {} : refresh(),
          child: Observer(
            builder: (context) => store == null || !store.isLoading.value
                ? ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: [...children, Space.v5],
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}
