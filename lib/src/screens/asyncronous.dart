// ignore_for_file: unused_field, prefer_final_fields, unused_element, unused_local_variable

part of 'screens.dart';

class Asyncronous extends StatefulWidget {
  const Asyncronous({super.key});

  @override
  State<Asyncronous> createState() => _AsyncronousState();
}

class _AsyncronousState extends State<Asyncronous> {
  dynamic resAPI;
  bool _try = true;
  ScrollController _scrollController = ScrollController();
  dynamic resp;

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

  _callApiAsyncAwait() async {
    final response = {"code": 200, "message": "sukses"};
    final x = await Future.delayed(
      Duration(seconds: 2),
      () => response,
    );
    setState(() {
      resp = response;
    });
  }

  _changeState() {
    // setState() {
    //   resAPI = {"code": 400, "message": "gagl"};
    //   _try = false;
    // }
  }

  @override
  void didUpdateWidget(covariant Asyncronous oldWidget) {
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
