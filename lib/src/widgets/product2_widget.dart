// ignore_for_file: prefer_const_constructors

part of 'widgetes.dart';

class ProductWidget2 extends StatelessWidget {
  final ProductsModels data;
  const ProductWidget2({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black38,
      // margin: EdgeInsets.all(12),
      child: Container(
        // color: Colors.blue.shade100,
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 90,
              height: 100,
              child: Image(
                  image: NetworkImage("${data.imageUrl}"), fit: BoxFit.cover),
            ),
            Text(
              "${data.productname}",
              style: TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${data.price}",
              style: TextStyle(fontSize: 9, color: Colors.white),
            ),
            Container(
              width: 40,
              height: 50,
              child: Image(
                  image: NetworkImage(
                      "https://png.pngtree.com/png-vector/20220723/ourmid/pngtree-logo-icon-gratis-ongkir-ke-seluruh-indonesia-dengan-pesawat-cargo-png-png-image_6034106.png"),
                  fit: BoxFit.cover),
            )
          ],
        ),
      ),
    );
  }
}
