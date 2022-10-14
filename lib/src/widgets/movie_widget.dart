part of 'widgetes.dart';

class MoviesWidget extends StatelessWidget {
  final MoviesModels data;
  const MoviesWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(color: Colors.black12),
              child: Image(image: NetworkImage(data.image), fit: BoxFit.fill),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("IMDB Rating",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange[500],
                      size: 20,
                    ),
                    Icon(Icons.star, size: 20, color: Colors.orange[500]),
                    Icon(Icons.star, size: 20, color: Colors.orange[500]),
                    const Icon(Icons.star, size: 20, color: Colors.black),
                    const Icon(Icons.star, size: 20, color: Colors.black),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
