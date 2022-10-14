// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

part of 'widgetes.dart';

class ProductWidget3 extends StatelessWidget {
  final ProductModel data;
  const ProductWidget3({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailProductScreen(productId: data.id!),
            ));
      },
      child: Card(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 180,
                  margin: EdgeInsets.all(8),
                  child: Image(
                      fit: BoxFit.cover, image: NetworkImage("${data.image}"))),
              Text(
                "${data.title}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("USD  ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    data.price.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text("${data.description}"),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Image(
                        image: NetworkImage(
                            "https://www.onlygfx.com/wp-content/uploads/2018/04/discount-stamp-4.png")),
                  ),
                  Card(
                    color: Colors.orange.shade800,
                    child: Container(
                        // color: Colors.orange.shade700,
                        alignment: Alignment.center,
                        height: 20,
                        width: 50,
                        child: Text(
                          "30 %",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
