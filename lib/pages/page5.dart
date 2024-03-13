import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learninggetx/pages/page1.dart';
import 'package:learninggetx/pages/page4.dart';

class PageLima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Lima"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  height: 150,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Dua rakaat sebelum shalat subuh lebih baik daripada dunia dan seisinya. HR. Muslim"),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Okai!"),
                      ),
                      SizedBox(height: 10),
                      const SizedBox(
                        height: 20,
                        child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                ));
              },
              child: Text("Tampilkan Bottom Sheets"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageSatu());
              },
              child: Text(" HOME "),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageEmpat());
              },
              child: Text("<< Back Page "),
            ),
          ],
        ),
      ),
    );
  }
}
