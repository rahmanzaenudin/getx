import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learninggetx/pages/page3.dart';
import 'package:learninggetx/pages/page5.dart';

class PageEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Empat"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.dialog(AlertDialog(
                  title: Text("PERINGATAN"),
                  content: Text("Yukk Sholat!!!"),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Tidakk Maau"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Mauu dongg ini udah wudhuu"),
                    ),
                  ],
                ));
              },
              child: Text("Tampilkan Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageTiga());
              },
              child: Text("<< Back Page "),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageLima());
              },
              child: Text("Next Page >>"),
            ),
          ],
        ),
      ),
    );
  }
}
