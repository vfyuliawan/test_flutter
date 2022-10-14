// ignore_for_file: prefer_const_constructors

part of 'widgetes.dart';

class DetilWidget extends StatelessWidget {
  const DetilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          actions: [
            Row(
              children: [
                Container(
                  // padding: EdgeInsets.only(bottom: 2, top: 2),
                  width: 130,
                  height: 30,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: "Search",
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        fillColor: Colors.white),
                  ),
                ),
                Icon(Icons.search),
              ],
            )
          ],
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image(
                    image: NetworkImage(
                        "https://images.vexels.com/media/users/3/137617/isolated/lists/c45afb857e72b86e87baaf255f71ff37-geometric-logo-abstract.png")),
              ),
              Text(
                "Kedai Electronic",
                style: TextStyle(fontSize: 14),
              )
            ],
          )),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            width: 200,
            color: Colors.orange,
            height: 200,
            child: Image(
              image: NetworkImage(
                  "https://dummyjson.com/image/i/products/5/2.jpg"),
            ),
          ),
          Text("data"),
        ],
      ),
    );
  }
}
