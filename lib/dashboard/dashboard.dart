import 'package:flutter/material.dart';
import 'package:food/core/text_styles/commenText_styles.dart';
import 'package:food/dashboard/controller/dashboardController.dart';
import 'package:food/screen/page3/page3screen.dart';
import 'package:get/get.dart';
part 'components/tab1.dart';
part 'components/tab2.dart';
part 'components/tab3.dart';
part 'components/page2.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

   final controller = Get.put(DashboardController());



List<Widget> dashboardIteams = [
const  Tab1(),
 const Tab2(),
 const Tab3()
];



 @override
 Widget build(BuildContext context) {
 return Obx(() {
 return Scaffold(
    body:controller.page2open.value
     ? const Page2():    
     controller.page3open.value? Page3(true):
      dashboardIteams[controller.selectedIndex.value],
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'TAB 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
                 label: 'TAB 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
                 label: 'TAB 3',
        ),
      ],
      currentIndex: controller.selectedIndex.value, 
    onTap:controller.onItemTapped, 
    ),
  );
 }
);
 }
 }