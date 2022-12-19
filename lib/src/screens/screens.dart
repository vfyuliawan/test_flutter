// import 'dart:html';
// import 'dart:ffi';
// import 'dart:html';
// import 'dart:html';
// import 'dart:html';
import 'dart:io';
import 'dart:ui';

import 'package:belajar_flutter/src/bloc/blocs.dart';
import 'package:belajar_flutter/src/bloc/product_gedget/product_gedget_bloc.dart';
import 'package:belajar_flutter/src/cubit/cubits.dart';
import 'package:belajar_flutter/src/models/models.dart';
import 'package:belajar_flutter/src/widgets/widgetes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import '../services/services.dart';
import '../utilities/utilities.dart';

part 'login_screen.dart';

part 'list_screen.dart';

part 'splash_screen.dart';

part 'list_product_gedget.dart';
part 'detail_product_gedget.dart';
part 'search_product_screen.dart';
part 'detail_user_screen.dart';
