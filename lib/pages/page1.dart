import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learninggetx/pages/page2.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(PageDua());
              },
              child: Text("Next Page >>"),
            ),
          ],
        ),
      ),
    );
  }
}
