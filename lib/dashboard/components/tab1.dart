part of "../dashboard.dart";

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
   final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: 
        Text("Page 1", style: DataListingScreenTextStyles.appbarStyle)
        ),backgroundColor: Colors.lime,),

      body: Center(
          child:  SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
              controller.openPage2();
              },

              child: Center(child: Text('Page 2', style: DataListingScreenTextStyles.btnTextStyel)),
            ),
    )));
  }
}