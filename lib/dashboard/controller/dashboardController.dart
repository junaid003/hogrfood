
import 'package:get/get.dart';
class DashboardController extends GetxController {
  var selectedIndex = 0.obs;
  RxBool page2open = false.obs;
  RxBool page3open = false.obs;


  Future<void> onItemTapped(int  index) async {
    page2open.value = false;
    page3open.value = false;
   selectedIndex.value = index;
  }

  Future<void> opentab2() async {
   selectedIndex.value = 1;
  }

 Future<void> openPage2() async {
   page3open.value = false;
   page2open.value = true;
  }

Future<void> closePage2() async {
   page2open.value = false;
  }

   Future<void> openPage3() async {
  page2open.value = false;
   page3open.value = true;
  }

Future<void> closePage3() async {
   page3open.value = false;
   page2open.value = true;
  }
  
}
 