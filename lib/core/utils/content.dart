import 'package:flutter/material.dart';

Future<dynamic> pageRouter(context, screen) {
  return Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
}

Future<dynamic> pageRouterFinish(context, screen) {
  return Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => screen));
}
