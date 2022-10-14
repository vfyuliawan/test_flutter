part of 'widgetes.dart';

class ChartWidget extends StatelessWidget {
  ChartWidget({super.key, required this.data});
  final ChartModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(data.title),
          subtitle: Text({data.year}.toString()),
          trailing: Image(image: NetworkImage(data.image))),
    );
  }
}
