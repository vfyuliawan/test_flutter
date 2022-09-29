// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

part of 'screens.dart';

class TestFlutter extends StatelessWidget {
  const TestFlutter({super.key});

  Widget _buildpictureRight() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
        // Padding(padding: EdgeInsets.all(20)),
        Expanded(
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
        // Padding(padding: EdgeInsets.all(20)),
        Expanded(
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
        // Padding(padding: EdgeInsets.all(20)),
        Expanded(
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
      ],
    );
  }

  Widget _buildStart() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
      ),
    );
  }

  Widget _buildPicturHor() {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 25)),
        Container(
          width: 80,
          height: 80,
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
        Container(
          width: 80,
          height: 80,
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
        Container(
          width: 80,
          height: 80,
          child: Image(image: NetworkImage("https://placeimg.com/150/150/any")),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildpictureRight(), _buildPicturHor(), _buildStart()],
        ),
      ),
    );
  }
}
