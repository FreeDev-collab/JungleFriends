import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './mainoverview.dart';
import './utils/custom_pageroutes.dart';
import './providers/monkey_provider.dart';
import './screens/rrfund.dart';
import './screens/sponsermonkey.dart';
import './screens/mmfund.dart';
import './screens/contact_us.dart';
import './screens/about_us.dart';

void main() {
  runApp(JungleFriends());
}

class JungleFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: JFMonkeys(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jungle Friends Primate Sanctuary',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Comfortaa',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CustomPageTransBuilder(),
              TargetPlatform.iOS: CustomPageTransBuilder(),
            },
          ),
        ),
        home: MainOverview(),
        routes: {
          RRFund.routeName: (ctx) => RRFund(),
          SponserAMonkey.routeName: (ctx) => SponserAMonkey(),
          MMFund.routeName: (ctx) => MMFund(),
          ContactUsScreen.routeName: (ctx) => ContactUsScreen(),
          AboutUs.routeName: (ctx) => AboutUs(),
        },
      ),
    );
  }
}
