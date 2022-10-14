// ignore_for_file: prefer_const_constructors

part of 'services.dart';

class NotificationService {
  //TODO :Init Package
  final FlutterLocalNotificationsPlugin localNotification =
      FlutterLocalNotificationsPlugin();

  //TODO : init function
  void init(
      Future<dynamic> Function(int, String?, String?, String?)? onDidReceive) {
    //TODO: init Android
    final AndroidInitializationSettings androidSetting =
        AndroidInitializationSettings(appIcon);

    //TODO init IOS
    final DarwinInitializationSettings iosSetting =
        DarwinInitializationSettings(
            requestSoundPermission: false,
            requestBadgePermission: false,
            requestAlertPermission: false,
            onDidReceiveLocalNotification: onDidReceive);

    //TODO : Init Setings
    final InitializationSettings initSetting =
        InitializationSettings(android: androidSetting, iOS: iosSetting);
  }

  void initLocalNotif(InitializationSettings initSetting) async {
    await localNotification.initialize(initSetting);
  }

  //TODO : Show Notif
  void showNotif(String message) async {
    //TODO: Android Notif Detail
    AndroidNotificationDetails androidNotifDetail =
        AndroidNotificationDetails(channelId, 'Belajar Salt');

    await localNotification.show(12345, 'Hallo', message,
        NotificationDetails(android: androidNotifDetail));
  }

  //TODO :Schedul Notice Birthday

  // TODO : Cancle Notice

  //TODO : Handdle payload Service
}
