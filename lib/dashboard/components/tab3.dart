part of "../dashboard.dart";

class Tab3 extends StatefulWidget {
  const Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
   final controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: 
        Text("Page 2", style: DataListingScreenTextStyles.appbarStyle)
        ),backgroundColor: Colors.lime,),
      body:Center(
         child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                 controller.opentab2();
                },
                child: Center(child: Text('Tab 2', style: DataListingScreenTextStyles.btnTextStyel)),
              ),
            ),
       ),
    );
  }
}