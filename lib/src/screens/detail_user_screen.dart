// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

part of 'screens.dart';

class DetailUserScreen extends StatelessWidget {
  const DetailUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginUserBloc, LoginUserState>(
      builder: (context, state) {
        if (state is LoginUserIsSuccess) {
          return UserScreenWidget();
        } else if (state is LoginUserIsLogout) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: "Anda Belum Login, Harap login terlebih dahulu"
                      .text
                      .make(),
                ).centered(),
                Container(
                  child: IconButton(
                      splashColor: Colors.blueAccent,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      icon: Icon(Icons.login),
                      color: Colors.blueAccent),
                ).centered(),
              ],
            ),
          );
        }
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:
                    "Anda Belum Login, Harap login terlebih dahulu".text.make(),
              ).centered(),
              Container(
                child: IconButton(
                    splashColor: Colors.blueAccent,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    icon: Icon(Icons.login),
                    color: Colors.blueAccent),
              ).centered(),
            ],
          ),
        );
      },
    );
  }
}

class UserScreenWidget extends StatelessWidget {
  const UserScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginUserBloc, LoginUserState>(
      listener: (context, loginState) {
        // TODO: implement listener
      },
      builder: (context, loginState) {
        if (loginState is LoginUserIsSuccess) {
          return Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: Stack(
              children: [
                Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage("${loginState.data.image}"),
                        ),
                      ),
                      6.heightBox,
                      "${loginState.data.firstName} ${loginState.data.lastName}"
                          .text
                          .black
                          .bold
                          .size(20)
                          .make(),
                      "${loginState.data.email}".text.black.size(14).make(),
                      6.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-clipart-flat-facebook-logo-png-icon-circle-22.png")),
                          ),
                          13.widthBox,
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://image.pngaaa.com/724/19724-middle.png"),
                            ),
                          ),
                          13.widthBox,
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://www.pngkey.com/png/full/2-27646_twitter-logo-png-transparent-background-logo-twitter-png.png"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://media.istockphoto.com/id/537241730/id/foto/tampilan-atas-di-distrik-keuangan.jpg?b=1&s=612x612&w=0&k=20&c=f_FXsaD_CY75GXCqo4MRQ1_oPlOs3bTuRQfoWs41Vbs=",
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      "Aboutme".text.make(),
                      8.heightBox,
                      "My Name is ${loginState.data.firstName} ${loginState.data.lastName}"
                          .text
                          .make()
                    ],
                  ),
                ).pOnly(top: 230),
                IconButton(
                  onPressed: null,
                  icon:
                      Icon(Icons.arrow_back_ios, size: 38, color: Colors.white),
                ).pOnly(top: 40).onTap(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(),
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  width: double.maxFinite,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "User Name".text.bold.make(),
                          "${loginState.data.username}".text.make(),
                        ],
                      ),
                      18.heightBox,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Email".text.color(Colors.grey).make(),
                          "${loginState.data.email}".text.make(),
                        ],
                      ),
                      18.heightBox,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "First Name".text.color(Colors.grey).make(),
                          "${loginState.data.firstName}".text.make(),
                        ],
                      ),
                      18.heightBox,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "First Name".text.color(Colors.grey).make(),
                          "${loginState.data.lastName}".text.make(),
                        ],
                      ),
                      18.heightBox,
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Gender".text.color(Colors.grey).make(),
                          "${loginState.data.gender}".text.make(),
                        ],
                      ),
                    ],
                  ),
                ).pOnly(top: 350),
                Container(
                  child: IconButton(
                    onPressed: () {
                      BlocProvider.of<LoginUserBloc>(context).add(UserLogout());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListScreen(),
                        ),
                      );
                      Commons().showSnackbarError(context, "Anda telah keluar");
                    },
                    icon: Icon(Icons.logout_outlined,
                        color: Colors.blueAccent, size: 50),
                  ),
                ).pOnly(top: 460).centered(),
              ],
            ),
          );
        } else if (loginState is LoginUserIsFailed) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: "Anda Belum Login, Harap login terlebih dahulu"
                      .text
                      .make(),
                ).centered(),
                Container(
                  child: IconButton(
                      splashColor: Colors.blueAccent,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      icon: Icon(Icons.login),
                      color: Colors.blueAccent),
                ).centered(),
              ],
            ),
          );
        }
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:
                    "Anda Belum Login, Harap login terlebih dahulu".text.make(),
              ).centered(),
              Container(
                child: IconButton(
                    splashColor: Colors.blueAccent,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    icon: Icon(Icons.login),
                    color: Colors.blueAccent),
              ).centered(),
            ],
          ),
        );
      },
    );
  }
}
