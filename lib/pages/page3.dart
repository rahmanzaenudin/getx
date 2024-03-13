import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learninggetx/pages/page2.dart';
import 'package:learninggetx/pages/page4.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar("PERINGATAN",
                    "Dua rakaat sebelum shalat subuh lebih baik daripada dunia dan seisinya. HR. Muslim");
              },
              child: Text("Tampilkan SnackBar"),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(PageDua());
                  },
                  child: Text("<< Back Page "),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PageEmpat());
                  },
                  child: Text("Next Page >>"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
