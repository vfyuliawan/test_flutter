// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, override_on_non_overriding_member, duplicate_ignore

part of 'screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  Widget _buildLogoHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Container(
          // padding: EdgeInsets.only(left: 10),
          width: 300,
          height: 300,
          child: Image(image: AssetImage("images/salt1.png")),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckLoginCubit()..checkLogin(),
      child: BlocConsumer<CheckLoginCubit, CheckLoginCubitState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is CheckLoginIsSuccess) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ListScreen(),
                ));
          } else if (state is CheckLoginIsFailed) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ));
          }
        },
        builder: (context, state) {
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
        },
      ),
    );
  }
}
