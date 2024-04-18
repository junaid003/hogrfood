import 'package:flutter/material.dart';
import 'package:food/core/text_styles/commenText_styles.dart';
import 'package:food/dashboard/controller/dashboardController.dart';
import 'package:food/screen/page3/controller/page3Controller.dart';
import 'package:get/get.dart';
part 'components/iteamListing.dart';

// ignore: must_be_immutable
class Page3 extends StatefulWidget {
  bool isFromTabe;
   Page3(this.isFromTabe ,{super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
final controller = Get.put(Page3Controller());
final dashboardcontroller = Get.put(DashboardController());
 @override
 Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
    icon:   Icon( widget.isFromTabe? Icons.arrow_back_ios
    :Icons.close,color: Colors.black),
    onPressed: () =>  widget.isFromTabe? dashboardcontroller.closePage3(): Navigator.pop(context),
  ), title: 
        Text("Page 3", style: DataListingScreenTextStyles.appbarStyle),
        backgroundColor: Colors.lime,),
  body: Obx(() {
  return
 Column(
   children: [
       SizedBox (
          height:   widget.isFromTabe? MediaQuery.of(context).size.height -155 : MediaQuery.of(context).size.height-95, 
          child: ListView.builder(
          shrinkWrap: true,
              itemCount:  controller.resultData.length,
              itemBuilder: (BuildContext context, int index) {
                  return IteamList(
                    iteam:controller.resultData[index]);
              },
            ),
        ),
   ],
 );
})
); 
 }}