// ignore_for_file: prefer_const_constructors

part of 'screens.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // const ListScreen({super.key});
  int bottomNavbarIndex = 0;
  final TextEditingController productSearchController = TextEditingController();

  double fontsize = 18;
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    BlocProvider.of<ProductGedgetBloc>(context).add(FetchProductGedget());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildAndroid();
  }

  Widget _buildAndroid() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: productSearchController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          BlocBuilder<SearchProductBloc, SearchProductState>(
                        builder: (context, state) {
                          return const Icon(Icons.search,
                                  color: Colors.blueAccent)
                              .onTap(
                            () {
                              BlocProvider.of<SearchProductBloc>(context).add(
                                ProductSearch(productSearchController.text),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => SearchProductScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      hintText: 'Search Product'),
                ),
              ).p(6),
              16.widthBox,
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailUserScreen(),
                      ));
                },
                icon: Icon(Icons.person),
              ),
            ],
          ).expand(),
          2.widthBox,
        ],
      ),
      body: SafeArea(child: ListProductGedget()),
    );
  }
}
