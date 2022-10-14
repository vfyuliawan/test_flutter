// ignore_for_file: prefer_const_constructors, deprecated_member_use

part of 'screens.dart';

class DetilProduct extends StatelessWidget {
  const DetilProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: false,
      //     actions: [
      //       Row(
      //         children: [
      //           Container(
      //             // padding: EdgeInsets.only(bottom: 2, top: 2),
      //             width: 130,
      //             height: 30,
      //             alignment: Alignment.center,
      //             color: Colors.white,
      //             child: TextField(
      //               autofocus: false,
      //               decoration: InputDecoration(
      //                   hintText: "Search",
      //                   filled: true,
      //                   border: OutlineInputBorder(
      //                       borderSide: BorderSide(color: Colors.black)),
      //                   fillColor: Colors.white),
      //             ),
      //           ),
      //           Icon(Icons.search),
      //         ],
      //       )
      //     ],
      //     title: Row(
      //       children: [
      //         Container(
      //           width: 40,
      //           height: 40,
      //           child: Image(
      //               image: NetworkImage(
      //                   "https://images.vexels.com/media/users/3/137617/isolated/lists/c45afb857e72b86e87baaf255f71ff37-geometric-logo-abstract.png")),
      //         ),
      //         Text(
      //           "Kedai Electronic",
      //           style: TextStyle(fontSize: 14),
      //         )
      //       ],
      //     )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                // margin: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: 500,
                        color: Colors.grey.shade500,
                        height: 400,
                        child: Image(
                          image: NetworkImage(
                              "https://dummyjson.com/image/i/products/5/2.jpg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "USD 40 ",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.pink,
                            size: 40,
                          )
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "30%",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade900),
                          ),
                          SizedBox(width: 12),
                          Text(
                            "USD 42",
                            style: TextStyle(
                                fontSize: 30,
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange.shade900,
                            size: 20,
                          ),
                          Icon(Icons.star,
                              size: 20, color: Colors.orange.shade900),
                          Icon(Icons.star,
                              size: 20, color: Colors.orange.shade900),
                          const Icon(Icons.star, size: 20, color: Colors.black),
                          const Icon(Icons.star, size: 20, color: Colors.black),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "IPHONE 15",
                        style: TextStyle(
                            color: Colors.orange.shade900, fontSize: 23),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry"),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Icon(
                                Icons.chat,
                                size: 24,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade400)),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text(
                                "Buy",
                                style: TextStyle(color: Colors.orange.shade900),
                              ),
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    width: 3.0,
                                    color: Colors.orange.shade900,
                                  ),
                                  backgroundColor: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text(
                                "Add to Chart",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange.shade900)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
