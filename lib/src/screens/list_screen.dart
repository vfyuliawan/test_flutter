// ignore_for_file: prefer_const_constructors

part of 'screens.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // const ListScreen({super.key});
  int bottomNavbarIndex = 0;
  double fontsize = 18;

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
                    width: 150,
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
                Text("Kedai Electronic")
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black54,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.orange.shade900,
            currentIndex: bottomNavbarIndex,
            onTap: (value) {
              setState(() {
                bottomNavbarIndex = value;
                print('kamu pilih bottom index $value');
                fontsize = 18;
              });
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop), label: 'Shooping'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me')
            ]),
        body: (bottomNavbarIndex == 0) ? GirdProduct() : ListProduct());
  }
}

class ListProduct extends StatelessWidget {
  const ListProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contact.length,
      itemBuilder: (context, index) {
        return WidgetContact(data: contact[index]);
      },
    );
  }
}

class GirdProduct extends StatelessWidget {
  const GirdProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //     crossAxisCount: 2,
    //     children: contact
    //         .map((e) => Image.network(
    //               e.imgurl,
    //               fit: BoxFit.cover,
    //             ))
    //         .toList());

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gratis Ongkir",
            style: TextStyle(
                color: Colors.orange.shade800,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  // margin: EdgeInsets.all(12),
                  child: Container(
                    // color: Colors.blue.shade100,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          child: Image(
                              image: NetworkImage(
                                  "https://dummyjson.com/image/i/products/4/2.jpg"),
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "Iphone 12",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "USD 50",
                          style: TextStyle(fontSize: 9),
                        ),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/fb/f6/95/fbf69513d3fa940b3e36b38694f0a04f.jpg"),
                              fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  // margin: EdgeInsets.all(12),
                  child: Container(
                    // color: Colors.blue.shade100,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          child: Image(
                              image: NetworkImage(
                                  "https://dummyjson.com/image/i/products/4/3.jpg"),
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "Samsung S20",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "USD 30",
                          style: TextStyle(fontSize: 9),
                        ),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/fb/f6/95/fbf69513d3fa940b3e36b38694f0a04f.jpg"),
                              fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  // margin: EdgeInsets.all(12),
                  child: Container(
                    // color: Colors.blue.shade100,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          child: Image(
                              image: NetworkImage(
                                  "https://dummyjson.com/image/i/products/10/3.jpg"),
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "HP Pavilon",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "USD 100",
                          style: TextStyle(fontSize: 9),
                        ),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/fb/f6/95/fbf69513d3fa940b3e36b38694f0a04f.jpg"),
                              fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  // margin: EdgeInsets.all(12),
                  child: Container(
                    // color: Colors.blue.shade100,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          child: Image(
                              image: NetworkImage(
                                  "https://dummyjson.com/image/i/products/10/1.jpg"),
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "Lenovo",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "USD 99",
                          style: TextStyle(fontSize: 9),
                        ),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/fb/f6/95/fbf69513d3fa940b3e36b38694f0a04f.jpg"),
                              fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: GridView.builder(
              itemCount: productModels.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 6 / 12),
              itemBuilder: (context, index) {
                return ProductWidget(
                  data: productModels[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
