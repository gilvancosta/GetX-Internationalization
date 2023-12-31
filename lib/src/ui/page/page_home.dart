import "package:flutter/material.dart";
import "package:get/get.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titleApp'.tr),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello".trParams({"name": "Flutter"})),
          const SizedBox(height: 20),

          Text("userListTitleSimple"
              .trPluralParams("userListTitlePlural", 1, {"total": "1"})),

          Text("userListTitleSimple"
              .trPluralParams("userListTitlePlural", 2, {"total": "2"})),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale("pt", "BR"));
              },
              child: const Text("Portuguese")),

          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale("en", "US"));
              },
              child: const Text("English")),

          // Obx(() => Text(controller.user.value.name)),
        ],
      )),
    );
  }
}
