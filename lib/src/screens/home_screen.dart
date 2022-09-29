// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //inner widget

  Widget _buildHeaderText() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
              text: TextSpan(
                  text: "MY",
                  style: TextStyle(color: Colors.black54, fontSize: 34),
                  children: <TextSpan>[
                TextSpan(
                    text: "IFA",
                    style: TextStyle(color: Colors.blue.shade300, fontSize: 34))
              ])),
          Row(
            children: [
              Text(
                "Impressive Finnancial dan Acunting",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              )
            ],
          )
        ],
      ),
    );
  }

  // Widget _buildHeaderText() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Mencatat Keuangan Lebih Mudah",
  //         style: TextStyle(
  //             fontSize: 24, color: Colors.black87, fontWeight: FontWeight.bold),
  //       ),
  //       Text(
  //         "Untuk Finnancial Planning Kamu Apapun Tujuanmu ",
  //         style: TextStyle(fontSize: 12, color: Colors.black45),
  //       )
  //     ],
  //   );
  // }

  Widget _buildSubtitleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mencatat Keuangan Lebih Mudah",
          style: TextStyle(
              fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        Text(
          "Untuk Finnancial Planning Kamu Apapun Tujuanmu ",
          style: TextStyle(fontSize: 12, color: Colors.black45),
        )
      ],
    );
  }

  Widget _buildPicture() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          child: Image(image: AssetImage("images/salt1.png")),
        )
      ],
    );
  }

  Widget _buildButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 350,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: null,
                child: Text("Daftar Sekarang"))),
        Text(
          "I Already Have An Acount",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("My First App With Salt Academy"),
        //   backgroundColor: Colors.cyan,
        // ),
        body: SafeArea(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          _buildHeaderText(),
          SizedBox(
            height: 24,
          ),
          _buildSubtitleText(),
          SizedBox(
            height: 30,
          ),
          _buildPicture(),
          SizedBox(
            height: 50,
          ),
          _buildButton()
        ],
      ),
    ));
  }
}
