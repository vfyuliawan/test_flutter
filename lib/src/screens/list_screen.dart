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
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  NotificationService notifService = NotificationService();

  // TODO : Buat Ui jika notifnya terjadi
  Future<dynamic> onReceiveNotif(int id, String? title, String? body) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title!),
          content: Text(body!),
          actions: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Kamu Mendapatkan $body')));
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showNotif() {
    notifService.showNotif("Tahu Bulat");
  }

  @override
  void initState() {
    notifService.init((p0, p1, p2, p3) => onReceiveNotif(p0, p1, p3));
    super.initState();
  }

  final future = http.get(Uri.parse(
      "https://www.w3schools.com/js/tryit.asp?filename=tryjs_promise2"));

  void getResponse() async {
    // future.then((value) {
    //   print(value);
    // // }).whenComplete(() => ScaffoldMessenger.of(context)
    //     .showSnackBar(SnackBar(content: Text("Sukses Login"))));
    final response = await future;
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Sukses")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Error")));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            leading: Image(
                image: NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C510BAQGy3oW6l2gXig/company-logo_200_200/0/1582168743193?e=2147483647&v=beta&t=xdM1U46coGLf3gJ5W8b4ccypkgdcyADSKfJYC3f3yDw")),
            actions: [
              Row(
                children: [
                  Container(
                    // padding: EdgeInsets.only(bottom: 2, top: 2),
                    width: 130,
                    height: 30,
                    alignment: Alignment.center,
                    // color: Colors.white,
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
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink)),
                      onPressed: () async {
                        final SharedPreferences storage = await prefs;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                        storage.setBool("Pernah_Login", false);
                        showTopSnackBar(
                            context,
                            CustomSnackBar.info(
                                message: "You Have Been Logout"));
                      },
                      child: Icon(Icons.logout))
                ],
              )
            ],
            title: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Container(
                //   width: 40,
                //   height: 40,
                //   child: Image(
                //       image: NetworkImage(
                //           "https://images.vexels.com/media/users/3/137617/isolated/lists/c45afb857e72b86e87baaf255f71ff37-geometric-logo-abstract.png")),
                // ),
                Text(
                  "SALT MOVIES",
                  style: TextStyle(fontSize: 14),
                )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.pink,
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
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop), label: 'Shopping'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: 'Chat'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
            ]),
        body: (bottomNavbarIndex == 0)
            ? ListMovies()
            : (bottomNavbarIndex == 1)
                ? GirdProduct()
                : (bottomNavbarIndex == 2)
                    ? Playlist()
                    : ListProducts2());
  }
}

class Playlist extends StatelessWidget {
  const Playlist({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: myChart.length,
        itemBuilder: (context, index) {
          return ChartWidget(data: myChart[index]);
        },
      ),
    );
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

class ListMovies extends StatelessWidget {
  const ListMovies({super.key});

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.elliptical(700, 300)),
                color: Colors.pink,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Exclusive Movies",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 500,
                          height: 220,
                          child: ListView.builder(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: movies.length,
                            itemBuilder: (context, index) {
                              return MoviesWidget(data: movies[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              CircleWidget(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: GridView.builder(
              itemCount: movies.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 6 / 12),
              itemBuilder: (context, index) {
                return MoviesWidget(
                  data: movies[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final List<Map<String, dynamic>> myCircle = [
    {"name": "Premier", "icons": Icons.access_time},
    {"name": "HighLight", "icons": Icons.tab},
    {"name": "Free", "icons": Icons.dark_mode},
    {"name": "Home", "icons": Icons.cabin},
    {"name": "Adventure", "icons": Icons.g_mobiledata},
    {"name": "View", "icons": Icons.landscape},
    {"name": "Scary", "icons": Icons.face},
    {"name": "Psycho", "icons": Icons.key},
  ];

  CircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 30,
          color: Colors.purple.shade800,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 8,
              ),
              Text(
                "Category",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(
                width: 264,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          width: 600,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.pink.shade500, Colors.purple.shade800]),
            // color: Colors.purple.shade900,
          ),
          child: Column(
            children: [
              Container(
                width: 590,
                height: 100,
                child: ListView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: myCircle.map((data) {
                    print(data);
                    return Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: 10, left: 10, bottom: 4, top: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.pink,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                        offset: Offset(4, 8))
                                  ]),
                              child: Icon(
                                data["icons"],
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data["name"],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.elliptical(700, 300)),
                color: Colors.orange[900],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Gratis Ongkir",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 500,
                          height: 200,
                          child: ListView.builder(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: productModels.length,
                            itemBuilder: (context, index) {
                              return ProductWidget2(data: productModels[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 600,
            child: FutureBuilder(
              future: http.get(Uri.parse("https://fakestoreapi.com/products")),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasData) {
                  final products = productModelFromJson(snapshot.data!.body);
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 6 / 16),
                    itemBuilder: (context, index) {
                      return ProductWidget3(data: products[index]);
                    },
                  );
                }
                return Container();
              },
            ),
          )
          // Container(
          //   child: GridView.builder(
          //     itemCount: productModels.length,
          //     shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2, childAspectRatio: 6 / 12),
          //     itemBuilder: (context, index) {
          //       return ProductWidget(
          //         data: productModels[index],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ListProducts2 extends StatelessWidget {
  const ListProducts2({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: http.get(Uri.parse("https://fakestoreapi.com/products")),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          final products = productModelFromJson(snapshot.data!.body);
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 6 / 16),
            itemBuilder: (context, index) {
              return ProductWidget3(data: products[index]);
            },
          );
        }
        return Container();
      },
    );
  }
}
