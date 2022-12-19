// part of 'screens.dart';

// class DetailProductScreen extends StatelessWidget {
//   const DetailProductScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             color: Colors.black,
//           ),
//         ),
//         elevation: 0,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.shopping_cart_outlined,
//               color: Colors.black,
//             ),
//           )
//         ],
//       ),
//       // body: FutureBuilder<http.Response>(
//       //     future: http
//       //         .get(Uri.parse("https://fakestoreapi.com/products/$productId")),
//       //     builder: (context, snapshot) {
//       //       if (snapshot.connectionState == ConnectionState.waiting) {
//       //         return const Center(
//       //           child: CircularProgressIndicator(),
//       //         );
//       //       }
//       //       if (snapshot.hasData) {
//       //         final detailProducts =
//       //             detailProductModelFromJson(snapshot.data!.body);
//       //         return DetailProductWidget(detailProducts: detailProducts);
//       //       }
//       //       if (snapshot.hasError) {}
//       //       return const SizedBox();
//       //     }),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(16),
//         color: Colors.white,
//         child: ElevatedButton(
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.all(10),
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(100))),
//             child: Text("Add To chart")),
//       ),
//       body: BlocConsumer<ProductDetailBloc, ProductDetailState>(
//         listener: (context, state) {
//           // TODO: implement listener
//           //jika gagal tampilkan pesan error
//           if (state is ProductDetailIsFailed) {
//             print("Request Error");
//           }
//         },
//         builder: (context, state) {
//           //loading tampil circular
//           if (state is ProductDetailIsLoading) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (state is ProductDetailIsSuccess) {
//             return DetailProductWidget2(detailProduct: state.model);
//           }
//           //jika berhasil tampil data

//           return Container();
//         },
//       ),
//     );
//   }
// }
