// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, deprecated_member_use

part of 'screens.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userNameController = TextEditingController();
  String userName = '';
  final _myPassController = TextEditingController();
  String pass = '';
  bool isError = false;
  bool isLoginProcessing = false;
  final _emailController = TextEditingController();
  bool isPassword = true;
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Widget _buildMyform(hint1, hint2) {
    return Column(
      children: [
        TextField(
          controller: _userNameController,
          autofocus: false,
          onChanged: (value) {
            setState(() {
              userName = value;
            });
          },
          decoration:
              InputDecoration(label: Text(hint1), icon: Icon(Icons.person)),
          obscureText: false,
        ),
        TextField(
          autofocus: false,
          controller: _myPassController,
          onChanged: (value) {
            setState(() {
              pass = value;
            });
          },
          decoration: InputDecoration(
              label: Text(hint2),
              icon: Icon(Icons.password),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (isPassword) {
                      setState(() {
                        isPassword = false;
                      });
                    } else {
                      setState(() {
                        isPassword = true;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                  ))),
          obscureText: isPassword,
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
          width: 300,
          height: 300,
          child: Image(
              image: NetworkImage(
                  "https://quickblox.com/wp-content/uploads/2019/12/what-is-flutter.png")),
        )
      ],
    );
  }

  Widget _buildTextField() {
    return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: _emailController,
        ));
  }

  // Widget _buildButton() {
  @override
  Widget build(BuildContext context) {
    // print(Commons().getUid());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:
              Icon(Icons.home_outlined, color: Colors.blueAccent).onTap(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListScreen(),
                ));
          }),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                              color: Colors.blueAccent,
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
                    Container(
                      padding: EdgeInsets.all(20),
                      child: _buildMyform("Email", "Password"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          BlocListener<LoginUserBloc, LoginUserState>(
                            listener: (context, statelogin) {
                              if (statelogin is LoginUserIsSuccess) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailUserScreen(),
                                    ));
                                Commons().showSnackbarInfo(
                                    context, "Berhasil Login");
                              } else if (statelogin is LoginUserIsFailed) {
                                Commons().showSnackbarError(
                                    context, statelogin.message);
                              }
                            },
                            child: Container(),
                          ),
                          BlocBuilder<LoginUserBloc, LoginUserState>(
                            builder: (context, state) {
                              return ButtonWidget(
                                caption: 'Login',
                                isLoading: (state is LoginUserIsLoading)
                                    ? true
                                    : false,
                                onpressed: () async {
                                  BlocProvider.of<LoginUserBloc>(context).add(
                                    UserLogin(
                                        userName: _userNameController.text,
                                        password: _myPassController.text),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
