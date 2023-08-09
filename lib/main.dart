import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/modules/login/views/login_view.dart';
import 'package:wises/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
      home: LoginView(),
    );
  }
}
