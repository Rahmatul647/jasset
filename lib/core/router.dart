import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jasset/core/locator.dart';
import 'package:jasset/core/reference/constant.dart';
import 'package:jasset/src/dashboard/presentation/page/home_page.dart';
import 'package:jasset/src/qr_scanner/presentation/page/scanner.dart';
import 'package:jasset/src/sample_feature/sample_item_list_view.dart';

class AppRouter {
  Future<String> get initialRoute async {
    // FlutterSecureStorage storage = getIt();
    // var token = await storage.read(key: cToken);
    // log("token $token");
    // if (token == null) {
    //   return HomePage.routeName;
    // }
    return HomePage.routeName;
  }

  RouteFactory get appOnGenerateRoute => (RouteSettings routeSettings) {
        var data = routeSettings.arguments as Map<String, dynamic>?;

        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case HomePage.routeName:
                return const HomePage();
              case ScannerPage.routeName:
                return const ScannerPage();
              // case HomePageView.routeName:
              default:
                return const SampleItemListView();
            }
          },
        );
      };
}
