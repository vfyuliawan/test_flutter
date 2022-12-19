part of 'screens.dart';

class DetailProductGedgetScreen extends StatelessWidget {
  const DetailProductGedgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            child: Text("Add To chart")),
      ),
      body: BlocConsumer<ProductGedgetDetailBloc, ProductGedgetDetailState>(
        listener: (context, state) {
          // TODO: implement listener
          //jika gagal tampilkan pesan error
          if (state is ProductGedgetDetailIsFailed) {
            print("Request Error");
          }
        },
        builder: (context, state) {
          //loading tampil circular
          if (state is ProductGedgetDetailIsLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is ProductGedgetDetailIsSuccess) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                      tag: state.data.id!,
                      child: Image.network(state.data.images[0])),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    state.data.title!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  8.heightBox,
                  // "Ratting".text.make(),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: (state.data.rating!.round() > 4.5) ? 5 : 3,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star,
                          color: Colors.orange[500],
                          size: 20,
                        );
                      },
                    ),
                  ),
                  "Rp.${state.data.price!}"
                      .text
                      .size(16)
                      .bold
                      .lineThrough
                      .make(),
                  8.heightBox,
                  "Rp.${state.data.discountPercentage!}".text.size(16).make(),
                  8.heightBox,
                  "Stock ${state.data.stock!}".text.size(16).make(),
                  8.heightBox,
                  "Brand ${state.data.brand!}".text.size(16).make(),
                  16.heightBox,
                  "Deskripsi".text.size(16).make(),
                  "Rp.${state.data.description!}".text.size(16).make(),
                ],
              ),
            );
            ;
          }
          //jika berhasil tampil data

          return Container();
        },
      ),
    );
  }
}
