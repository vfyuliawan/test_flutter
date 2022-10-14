part of 'widgetes.dart';

class DetailProductWidget extends StatefulWidget {
  final DetailProductModel detailProducts;

  const DetailProductWidget({super.key, required this.detailProducts});

  @override
  State<DetailProductWidget> createState() => _DetailProductWidgetState();
}

class _DetailProductWidgetState extends State<DetailProductWidget> {
  int selectedIndex = 0;
  void changeColor(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  _sizedBox(double val) {
    return SizedBox(height: val);
  }

  // AddProduct bloc = AddProduct();
  Widget _buildImageproduct(Size size) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.network(
              widget.detailProducts.image!,
              fit: BoxFit.cover,
              height: size.height * 0.3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetail(Size size) {
    return Container(
      height: size.height * 0.34,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Text(
              widget.detailProducts.title!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial'),
            ),
          ),
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
          _sizedBox(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Text(
              widget.detailProducts.description!,
              maxLines: 3,
              style: const TextStyle(fontSize: 12, fontFamily: 'Arial'),
            ),
          ),
          _sizedBox(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "${widget.detailProducts.price!} US",
              style: const TextStyle(fontSize: 12),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAddchart(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.25 - kToolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              fixedSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(color: Colors.deepOrange),
              ),
            ),
            onPressed: () {},
            child: const Text("Add to Chart"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildImageproduct(size),
        _sizedBox(20),
        _buildDetail(size),
        _sizedBox(10),
        _buildAddchart(size),
      ],
    );
  }
}
