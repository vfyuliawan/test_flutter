part of 'screens.dart';

class ListProductGedget extends StatefulWidget {
  const ListProductGedget({super.key});

  @override
  State<ListProductGedget> createState() => _ListProductGedgetState();
}

class _ListProductGedgetState extends State<ListProductGedget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductGedgetBloc, ProductGedgetState>(
      listener: (context, state) {
        if (state is ProductGedgetIsFailed) {
          print("Is Failed");
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is ProductGedgetIsLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is ProductGedgetIsSuccess) {
          final data = state.data.products;
          return GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3.5 / 5,
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
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        data[index].images[0],
                        fit: BoxFit.contain,
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
                      ),
                      Container(
                        height: 40,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              (data[index].rating!.round() > 4.5) ? 5 : 3,
                          itemBuilder: (context, index) {
                            return Icon(
                              Icons.star,
                              color: Colors.blueAccent,
                              size: 20,
                            );
                          },
                        ),
                      ),
                    ]).p8()
                  ],
                ).box.white.make(),
              ).onTap(() {
                BlocProvider.of<ProductGedgetDetailBloc>(context)
                    .add(FetchDetailGedget(data[index].id!));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProductGedgetScreen(),
                    ));
              });
            },
          );
          // return SingleChildScrollView(
          //     child: Container(
          //   padding: EdgeInsets.symmetric(vertical: 40),
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: state.data.products
          //           .map(
          //             (e) => Card(
          //               margin:
          //                   EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //               // decoration: BoxDecoration(
          //               //     color: Colors.grey.shade100,
          //               //     borderRadius: BorderRadius.circular(20)),
          //               child: Container(
          //                 height: 250,
          //                 width: 170,
          //                 padding: EdgeInsets.all(5),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Container(
          //                       height: 80,
          //                       width: 100,
          //                       child: Image(
          //                           image: NetworkImage("${e.images[0]}")),
          //                     ).centered(),
          //                     "${e.title}".text.make(),
          //                     "IDR ${e.price}".text.lineThrough.make(),
          //                     "IDR ${e.discountPercentage}".text.make(),
          //                     Container(
          //                       height: 40,
          //                       child: ListView.builder(
          //                         shrinkWrap: true,
          //                         scrollDirection: Axis.horizontal,
          //                         itemCount: (e.rating!.round() > 4.5) ? 5 : 3,
          //                         itemBuilder: (context, index) {
          //                           return Icon(
          //                             Icons.star,
          //                             color: Colors.orange[500],
          //                             size: 20,
          //                           );
          //                         },
          //                       ),
          //                     ),
          //                     "${e.description}".text.maxLines(2).make()
          //                   ],
          //                 ),
          //               ),
          //             ).onTap(() {
          //               BlocProvider.of<ProductGedgetDetailBloc>(context)
          //                   .add(FetchDetailGedget(e.id!));
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => DetailProductGedgetScreen(),
          //                   ));
          //             }),
          //           )
          //           .toList(),
          //     ),
          //   ),
          // ).centered());
        }
        return Container();
      },
    );
  }
}
