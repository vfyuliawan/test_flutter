// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, override_on_non_overriding_member, duplicate_ignore

part of 'screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

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

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 4000), () {
      checkLogin();
    });
    super.initState();
  }

  Future<void> checkLogin() async {
    final SharedPreferences storage = await prefs;
    if (storage.getBool("pernah_login") == true) {
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LifeCycleWidget(child: ListScreen()),
          ));
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(children: [
          _buildLogoHeader(),
          CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.black)),
        ]),
      ),
    );
  }
}
