import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:s_store/bindings/general_binding.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/theme/thme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      initialBinding: GeneralBinding(),
      home: Scaffold(
        backgroundColor: SColors.primary,

        body: Center(child: CircularProgressIndicator(color: SColors.white)),
      ),
    );
  }
}
