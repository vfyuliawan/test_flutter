part of 'screens.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 100,
              color: Colors.orange,
            ),
            Container(
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, blurRadius: 7, offset: Offset(0, 4))
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Container(
                      height: 800,
                      child: _buildListProductSearch()
                          .pOnly(top: 10, right: 10, left: 10))
                  .pOnly(top: 50),
            ).pOnly(top: 70),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 130),
              child: "Related Search".text.bold.black.size(18).make(),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 24,
                  color: Colors.white,
                ).p(10).onTap(() {
                  Navigator.pop(context);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListProductSearch() {
    return BlocConsumer<SearchProductBloc, SearchProductState>(
      listener: (context, state) {
        if (state is SearchProductIsFailed) {
          print(state.message);
        }
      },
      builder: (context, state) {
        if (state is SearchProductIsLoading) {
          //Loading Widget
          return Container(child: CircularProgressIndicator()).centered();
        }
        if (state is SearchProductIsSuccess && state.data.products.isNotEmpty) {
          //List Product Widget
          final data = state.data.products;

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3.5 / 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: VStack(
                  [
                    AspectRatio(
                      aspectRatio: 16 / 10,
                      child: Image.network(
                        data[index].images[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                    VStack([
                      "${data[index].title}".text.size(16).bold.make(),
                      4.heightBox,
                      Row(
                        children: [
                          "IDR ${data[index].price}"
                              .text
                              .lineThrough
                              .red500
                              .size(12)
                              .bold
                              .make(),
                          4.widthBox,
                          "IDR ${data[index].discountPercentage}"
                              .text
                              .size(12)
                              .bold
                              .make(),
                        ],
                      )
                    ]).p8()
                  ],
                ).box.white.make(),
              );
            },
          );
        }
        return VStack(
          [
            "Pencarian Anda Tidak Ditemukan"
                .text
                .size(22)
                .bold
                .bodyText1(context)
                .color(Colors.orange)
                .makeCentered(),
            4.heightBox,
            Container(
              child: Image(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/6028/6028584.png")),
            ),
            4.heightBox,
            "Cari Kembali".text.make().onTap(() {
              Navigator.pop(context);
            })
          ],
          crossAlignment: CrossAxisAlignment.center,
        ).centered();
      },
    );
  }

  // Widget _buildProductWidget(BuildContext context, ProductsGedget data) {
  //   return ClipRRect(
  //     borderRadius: BorderRadius.circular(10),
  //     child: VStack(
  //       [
  //         AspectRatio(
  //           aspectRatio: 16 / 10,
  //           child: Image.network(
  //             data.pictures![0],
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //         VStack([
  //           data.name!.text.size(16).bold.make(),
  //           4.heightBox,
  //           Row(
  //             children: [
  //               Icon(
  //                 Icons.star,
  //                 color: kPrimaryColor,
  //                 size: 15,
  //               ),
  //               Icon(Icons.star, size: 15, color: kPrimaryColor),
  //               Icon(Icons.star, size: 15, color: kPrimaryColor),
  //               const Icon(Icons.star, size: 15, color: Colors.black),
  //               const Icon(Icons.star, size: 15, color: Colors.black),
  //             ],
  //           ),
  //           4.heightBox,
  //           Commons().setPriceToIDR(data.price!).text.size(12).make(),
  //           4.heightBox,
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             // mainAxisSize: MainAxisSize.max,
  //             children: data.category!
  //                 .map((e) => Container(
  //                       padding: EdgeInsets.only(right: 5),
  //                       child:
  //                           e.text.color(Colors.grey.withOpacity(0.4)).make(),
  //                     ))
  //                 .toList(),
  //           )
  //         ]).p8()
  //       ],
  //     ).box.white.make(),
  //   ).onTap(() {
  //     context.go(routeName.detailPath, extra: data.id);
  //   });
  // }
}
