part of "../page3screen.dart";

class IteamList extends StatelessWidget {
  const IteamList({super.key, required this.iteam});
  final String iteam;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            alignment: Alignment.center,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                     iteam,
                   style: DataListingScreenTextStyles.title
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
