part of 'screens.dart';

class MyLifeCycle extends StatefulWidget {
  const MyLifeCycle({super.key});

  @override
  State<MyLifeCycle> createState() => _MyLifeCycleState();
}

class _MyLifeCycleState extends State<MyLifeCycle> {
  dynamic resAPI;
  bool _try = true;
  ScrollController _scrollController = ScrollController();

  _callApi() {
    final response = {"code": 200, "message": "sukses"};
    final response1 = productModels;
    //mounted pemberitahuan screen ready / widget terender sepenuhnya
    if (mounted) {
      setState(() {
        resAPI = response1;
      });
    }
  }

  _changeState() {
    // setState() {
    //   resAPI = {"code": 400, "message": "gagl"};
    //   _try = false;
    // }
  }

  @override
  void didUpdateWidget(covariant MyLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdate $resAPI");
  }

  // Jika terdapat
  @override
  didChangeDependency() {
    super.didChangeDependencies();
    print('didChange $resAPI');
    print(resAPI);
  }

  //pertama kali app atau screen di render
  @override
  void initState() {
    super.initState();
    _callApi();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Life Ccycle Flutter"),
      ),
      body: Center(
          child: Column(
        children: [
          (null != resAPI
              ? Text(resAPI["productName"].toString())
              : Text("LifeCycle")),
          ElevatedButton(onPressed: _changeState, child: Text("Change"))
        ],
      )),
    );
  }
}
