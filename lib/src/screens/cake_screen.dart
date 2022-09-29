// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

part of 'screens.dart';

class CakePage extends StatelessWidget {
  const CakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
        leading: Icon(Icons.home),
        title: Text("First App With Salt"),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Description
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    // color: Colors.amber,
                    child: Column(children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                      Container(
                        margin: const EdgeInsets.all(1.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.grey.shade100,
                        ),
                        child: Text(
                          'Strowbery Pavlovas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(1.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.grey.shade100,
                        ),
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta est quibusdam autem excepturi nulla ipsum odio aperiam molestiae illum voluptatem aut cupiditate, vero veniam, obcaecati libero! Provident ex voluptatibus aspernatur facere, similique mollitia, nostrum ipsum culpa, praesentium consectetur quod explicabo!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(1.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.grey.shade100,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.green[500],
                              size: 12,
                            ),
                            Icon(Icons.star,
                                size: 12, color: Colors.green[500]),
                            Icon(Icons.star,
                                size: 12, color: Colors.green[500]),
                            const Icon(Icons.star,
                                size: 12, color: Colors.black),
                            const Icon(Icons.star,
                                size: 12, color: Colors.black),
                            Text(
                              "170 Reviewes",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(1.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.grey.shade100,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  //icon
                                  Icon(
                                    Icons.tiktok,
                                    size: 15,
                                  ),
                                  //prep
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "Tik-Tok",
                                    style: TextStyle(fontSize: 7),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  //min
                                  Text(
                                    "12K Follower",
                                    style: TextStyle(fontSize: 5),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  //icon
                                  Icon(
                                    Icons.facebook,
                                    size: 15,
                                  ),
                                  //prep
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(fontSize: 7),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  //min
                                  Text(
                                    "12K Friend",
                                    style: TextStyle(fontSize: 5),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  //icon
                                  Icon(
                                    Icons.whatsapp,
                                    size: 15,
                                  ),
                                  //prep
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "Whatsapp",
                                    style: TextStyle(fontSize: 7),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  //min
                                  Text(
                                    "12K Friend",
                                    style: TextStyle(fontSize: 5),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  //icon
                                  //prep
                                  //min
                                ],
                              ),
                            ],
                          )),
                    ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(top: 13),
                    child: Image(
                        image: NetworkImage(
                            "https://placeimg.com/300/265/people/sepia")),
                  ),
                ) //Image
              ],
            ),
            Column(
              children: [
                Container(
                  width: 350,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black54)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Login()));
                      },
                      child: Text("Logout")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
