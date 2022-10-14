// ignore_for_file: prefer_const_constructors, deprecated_member_use

part of 'widgetes.dart';

class ButtonWidget extends StatelessWidget {
  final String caption;
  final bool isLoading;
  final double? width;
  final Function()? onpressed;

  ButtonWidget(
      {super.key,
      required this.caption,
      this.isLoading = false,
      this.width,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: width ?? size.width,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: (isLoading) ? null : onpressed,
        // ignore: sort_child_properties_last
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: (isLoading)
              ? CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.black),
                )
              : Text(
                  caption,
                  style: TextStyle(color: Colors.white),
                ),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.pink,
            elevation: 0),
      ),
    );
  }
}
