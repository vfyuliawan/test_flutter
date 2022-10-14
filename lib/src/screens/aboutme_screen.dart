// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

part of 'screens.dart';

class AboutmeScreen extends StatelessWidget {
  AboutmeScreen({super.key});
  final List<Icon> myIcon = [
    Icon(Icons.g_mobiledata),
    Icon(Icons.abc_outlined),
    Icon(Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 5, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 20)
                          ]),
                          child: Card(
                            child: Container(
                              height: 400,
                              width: 320,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/147/147140.png")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Container(
                      height: 200,
                      width: 330,
                      color: Colors.amber.shade300,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Row(
                            children: myIcon,
                          );
                        },
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
