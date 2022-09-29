// ignore_for_file: prefer_const_constructors

part of 'widgetes.dart';

class WidgetContact extends StatelessWidget {
  final ContactModel data;

  const WidgetContact({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name),
      subtitle: Text(data.phoneNumber),
      leading: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(data.imgurl))),
      ),
      contentPadding: EdgeInsets.all(5),
      dense: true,
    );
  }
}
