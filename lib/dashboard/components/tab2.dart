part of "../dashboard.dart";

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

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
               Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  Page3(false),
                              ),
                             ); 
              },
              child: Center(child: Text('Page 3', style: DataListingScreenTextStyles.btnTextStyel)),
            ),
          ),
      ),
    );
  }
}