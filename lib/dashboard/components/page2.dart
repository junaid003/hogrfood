part of "../dashboard.dart";

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = Get.put(DashboardController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
    onPressed: () =>  controller.closePage2(),
  ), title:Text("Page 2", style: DataListingScreenTextStyles.appbarStyle)
        ,backgroundColor: Colors.lime,),
      body:
       Center(
         child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                 controller.openPage3();
                },
                child: Center(child: Text('Page 3', style: DataListingScreenTextStyles.btnTextStyel)),
              ),
            ),
       ),
    );
  }
}