// ignore_for_file: prefer_const_constructors

part of 'services.dart';

class NotificationService {
  //TODO :Init Package
  final FlutterLocalNotificationsPlugin localNotification =
      FlutterLocalNotificationsPlugin();

  //TODO : init function
  void init(
      Future<dynamic> Function(int, String?, String?, String?)? onDidReceive,
      Function(NotificationResponse)? onDidReceiveNotificationResponse) {
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
    tz.initializeTimeZones();
    initLocalNotif(initSetting, onDidReceiveNotificationResponse);
  }

  void initLocalNotif(InitializationSettings initSetting,
      Function(NotificationResponse)? onDidReceiveNotificationResponse) async {
    await localNotification.initialize(initSetting,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
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
  void showNotifBirthday(String title, String message, String idProduct) async {
    AndroidNotificationDetails androidNotifDetail =
        const AndroidNotificationDetails(channelId, 'Belajar Salt',
            playSound: true);

    DarwinNotificationDetails iosNotifDetail = DarwinNotificationDetails();

    await localNotification.zonedSchedule(
      12345,
      title,
      message,
      tz.TZDateTime.now(tz.local).add(Duration(seconds: 10)),
      NotificationDetails(android: androidNotifDetail, iOS: iosNotifDetail),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      payload: idProduct,
    );
  }

  // TODO : Cancle Notice

  //TODO : Handdle payload Service
}
