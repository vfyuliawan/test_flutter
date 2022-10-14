// ignore_for_file: unnecessary_overrides

part of 'widgetes.dart';

class LifeCycleWidget extends StatefulWidget {
  final Widget child;

  const LifeCycleWidget({super.key, required this.child});
  @override
  State<LifeCycleWidget> createState() => _LifeCycleWidgetState();
}

//menambahkan wigetsbindingObserver mengobservasi perubahan
class _LifeCycleWidgetState extends State<LifeCycleWidget>
    with WidgetsBindingObserver {
  //TODO: Tambahkan initstate
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  //TODO: Tambahkan didchang
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    if (state == AppLifecycleState.resumed) {
      print("kamu jelek");
      showTopSnackBar(
          context, CustomSnackBar.success(message: "Selamat Datang Kembali"));
    } else if (state == AppLifecycleState.detached) {
      print("saat widget dimulai");
    } else if (state == AppLifecycleState.inactive) {
      print("saat widget di non aktif");
    } else if (state == AppLifecycleState.paused) {
      print("Saat Widget di Mulai Ulang");
    }
    ;

    super.didChangeAppLifecycleState(state);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('DEACTIVE WIDGET');
    super.deactivate();
  }

  //TODO: Tambahkan dispose
  //Jika App di dispose Widgetbinding tidak akan
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
