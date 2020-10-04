import 'package:flutter/material.dart';

import '../widgets/swiper_widget.dart';
import '../utils/constants.dart';
import '../screens/rrfund.dart';
import '../screens/sponsermonkey.dart';
import '../screens/mmfund.dart';
import '../utils/custom_drawer.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'homepage';
  final String title = 'Jungle Friends Primate Sanctuary';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(
          'images/logo.jpg',
          fit: BoxFit.cover,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      backgroundColor: Color(0xFF6A8F49),
      endDrawer: CustomDrawer(),
      body: Stack(
        children: [
          SwiperWidget(),
          Container(
            margin: const EdgeInsets.only(
              top: 130,
            ),
            child: Material(
              color: Color(0xFF6A8F49),
              child: ListView(
                children: [
                  ResearchRetirementFundCard(),
                  SponserAMonkeyCard(),
                  MonkeyMedicalFundCard(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Our partners'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
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
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Florida Dept. of Agriculture & Consumer Services Registration #CH10986',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
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
                    'Copyright © 1998 – 2020, Jungle Friends Primate Sanctuary.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'App designed and maintained by',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Comfortaa',
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                            text: ' Freeman Kayiranga',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Comfortaa',
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'FreeCbh Designs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
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
        height: 200,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: partnerImages.length,
          itemBuilder: (ctx, i) => Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  child: partnerImages[i],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 50,
                  width: 100,
                  child: Text(
                    partnerTitles[i],
                    style: TextStyle(
                      fontSize: 10,
                    ),
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
