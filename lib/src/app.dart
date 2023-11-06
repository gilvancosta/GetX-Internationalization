import "package:flutter/material.dart";
import "package:get/get.dart";

import "../main.dart";

import "ui/page/page_home.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("pt", "BR"),
      translations: translationKeys,
      getPages: [
        GetPage(
          name: "/",
          // binding: BindingsBuilder.put(() => UserController(userRepository: Get.find())),
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
