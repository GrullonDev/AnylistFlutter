import 'package:flutter/material.dart';

import 'package:anylist/utils/router/router_path.dart';

class UnknowView extends StatefulWidget {
  final String route;

  const UnknowView(
    this.route, {
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _UnknowViewState();
}

class _UnknowViewState extends State<UnknowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ruta ${widget.route} no definida.'),
            ElevatedButton(
              child: const Text('Intentar de nuevo'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.popAndPushNamed(context, RoutePaths.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
