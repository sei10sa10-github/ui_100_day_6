import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:ui_100_day_6/common/services/excersize_service.dart';
import 'package:ui_100_day_6/common/services/file_service.dart';
import 'package:ui_100_day_6/home/controller/home_controller.dart';
import 'package:ui_100_day_6/home/models/home_state.dart';

import 'home/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<ExcersizeService>(
      create: (_) => ExcersizeService(fileService: FileService()),
      child: StateNotifierProvider<HomeController, HomeState>(
        create: (context) => HomeController(HomeState()),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Home(),
        ),
      ),
    );
  }
}
