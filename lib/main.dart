import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainoverview.dart';
import './providers/monkey_provider.dart';
import './screens/rrfund.dart';
import './screens/sponsermonkey.dart';
import './screens/mmfund.dart';

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
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainOverview(),
        routes: {
          RRFund.routeName: (ctx) => RRFund(),
          SponserAMonkey.routeName: (ctx) => SponserAMonkey(),
          MMFund.routeName: (ctx) => MMFund(),
        },
      ),
    );
  }
}
