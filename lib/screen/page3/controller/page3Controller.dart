import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
class Page3Controller extends GetxController {
  dynamic resultData = [].obs ;
  Future<void> featchData() async {
      var filePath= "assets/data/page3.json";
   String jsonString = await rootBundle.loadString(filePath);
   final data = jsonDecode(jsonString);
   resultData.value= data["page3"];
  }


 @override
  void onInit() {
    // TODO: implement onInit
    featchData();
    super.onInit();
  }
}
 