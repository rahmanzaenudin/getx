import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learninggetx/pages/page1.dart';
import 'package:learninggetx/pages/page3.dart';

class PageDua extends StatelessWidget {
  var user = "rahman zaenudin".obs;

  void ubah(String jenis) {
    if (jenis == 'lowercase') {
      user.value = user.value.toLowerCase();
    } else if (jenis == 'uppercase') {
      user.value = user.value.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Obx(() => Text('${user.value}')),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => ubah('lowercase'),
                  child: Icon(Icons.minimize_rounded),
                ),
                SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: () => ubah('uppercase'),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(PageSatu());
                  },
                  child: Text("<< Back Page "),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PageTiga());
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
