import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import '../providers/monkey_provider.dart';
import '../utils/constants.dart';
import '../screens/rrfund.dart';
import '../screens/sponsermonkey.dart';
import '../screens/mmfund.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6A8F49),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Consumer<JFMonkeys>(
                    builder: (ctx, monkeys, chld) =>
                        monkeys.monkeyList.length <= 0
                            ? CircularProgressIndicator()
                            : Swiper(
                                autoplay: true,
                                curve: Curves.easeInOut,
                                duration: 20,
                                containerWidth: double.infinity,
                                itemCount: monkeys.monkeyList.length,
                                itemBuilder: (ctx, i) => Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    monkeys.monkeyList[i].localImage,
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 280.0),
                                      child: Text(
                                        monkeys.monkeyList[i].title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                  ),
                ),
                Container(
                  color: Color(0xFFD9AD42),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/chevron.gif'),
                      Expanded(
                        child: Text(
                          'do something amazing for the monkey during the pandemic!'
                              .toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 130,
            ),
            child: Material(
              child: ListView(
                children: [
                  ResearchRetirementFundCard(),
                  SponserAMonkeyCard(),
                  MonkeyMedicalFundCard(),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Our partners',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Sponsers(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Jungle Friends is a non-profit 501(c)(3) organization and your donations are tax deductible.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Florida Dept. of Agriculture & Consumer Services Registration #CH10986',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'A COPY OF THE OFFICIAL REGISTRATION AND FINANCIAL INFORMATION MAY BE '
                    ' FROM THE DIVISION OF CONSUMER SERVICES BY CALLING TOLL-FREE (800-345-7352) '
                    'WITHIN THE STATE. REGISTRATION DOES NOT IMPLY ENDORSEMENT, APPROVAL OR RECOMMENDATION BY THE STATE.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Copyright © 1998 – 2020, Jungle Friends Primate Sanctuary.'),
                  Text('App designed and maintained by Freeman Kayiranga'),
                  Text(
                    'FreeCbh Designs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResearchRetirementFundCard extends StatelessWidget {
  const ResearchRetirementFundCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            child: Image.asset(
              'images/research.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Research Retirement Fund',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              child: Text(
                'Learn more >>',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  RRFund.routeName,
                );
              },
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Your donation helps monkeys released from research.',
              style: TextStyle(fontFamily: 'Comfortaa'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}

class SponserAMonkeyCard extends StatelessWidget {
  const SponserAMonkeyCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            child: Image.asset(
              'images/hayley.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Sponser a Monkey',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              child: Text(
                'Find out how >>',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  SponserAMonkey.routeName,
                );
              },
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Your monthly donation provides food, housing and enrichment.',
              style: TextStyle(fontFamily: 'Comfortaa'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}

class MonkeyMedicalFundCard extends StatelessWidget {
  const MonkeyMedicalFundCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            child: Image.asset(
              'images/kari-dr-schirmer.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Monkey Medical Fund',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              child: Text(
                'Please help >>',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  MMFund.routeName,
                );
              },
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Help fund veterinary care and medical expenses for our monkeys.',
              style: TextStyle(fontFamily: 'Comfortaa'),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}

class Sponsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 240,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: partnerImages.length,
          itemBuilder: (ctx, i) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  child: partnerImages[i],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 140,
                  child: Text(
                    partnerTitles[i],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
