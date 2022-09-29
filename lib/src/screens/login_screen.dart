// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

part of 'screens.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _myController = TextEditingController();
  String name = '';
  final _myPass = TextEditingController();
  String pass = '';
  bool isError = false;

  Widget _buildMyform(hint1, hint2) {
    return Column(
      children: [
        TextField(
          controller: _myController,
          autofocus: false,
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
          decoration:
              InputDecoration(label: Text(hint1), icon: Icon(Icons.person)),
          obscureText: false,
        ),
        TextField(
          autofocus: false,
          controller: _myPass,
          onChanged: (value) {
            setState(() {
              pass = value;
            });
          },
          decoration:
              InputDecoration(label: Text(hint2), icon: Icon(Icons.password)),
          obscureText: true,
        ),
      ],
    );
  }

  Widget _buildLogoHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Container(
          // padding: EdgeInsets.only(left: 10),
          width: 200,
          height: 200,
          child: Image(image: AssetImage("images/salt1.png")),
        )
      ],
    );
  }

  // Widget _buildButton() {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
        leading: Icon(Icons.home),
        title: Text("My First AppLication with Salt"),
      ),
      body: Column(
        children: [
          _buildLogoHeader(),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text((isError == true
                    //     ? 'Please Input Coorect User Name And Password'
                    //     : ''))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     Icon(Icons.people),
                //     _buildMyform("hint"),
                //   ],
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: _buildMyform("Name", "Password"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Container(
                      //   width: 350,
                      //   child: ElevatedButton(
                      //       style: ButtonStyle(
                      //           backgroundColor:
                      //               MaterialStateProperty.all<Color>(
                      //                   Colors.pink)),
                      //       onPressed: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (builder) => CakePage()));
                      //       },
                      //       child: Text("Move Page")),
                      // ),
                      Container(
                        width: 350,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.pink)),
                            onPressed: () {
                              if (name == 'cang' && pass == '12345') {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => ListScreen()));
                                print('berhasil');
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Login Success"),
                                      content: Text("Enjoy Shooping"),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Lanjut'))
                                      ],
                                    );
                                  },
                                );
                              } else {
                                setState(() {
                                  isError = true;
                                });
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Login Gagal"),
                                      content: Text(
                                          "Please Input Correct UserName And Password!!"),
                                    );
                                  },
                                );
                              }
                            },
                            child: Text("Login")),
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Dont Have an Account,",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                                text: " Click Here",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic))
                          ])),
                      SizedBox(
                        height: 20, // <-- SEE HERE
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or Login With",
                            style: TextStyle(color: Colors.black38),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10, // <-- SEE HERE
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),
                                    fit: BoxFit.contain)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png"),
                                    fit: BoxFit.contain)),
                          ),
                          SizedBox(width: 13),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/732/732221.png"),
                                    fit: BoxFit.contain)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
