import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SponserAMonkey extends StatelessWidget {
  static const routeName = 'sponseramonkey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sponser a Monkey'.toUpperCase(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          sponsoredMView(),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                formButton(
                  title: 'Online Form',
                  onPressed: () {},
                ),
                formButton(
                  title: 'Printable Form',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Monthly Sponsorship Levels:',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text('Guardian: \$100/month'),
          Text('Primate Protector: \$50/month'),
          Text('Monkey Lover: \$25/month'),
          Text('Friend of the Jungle: \$10/month'),
          SizedBox(
            height: 16,
          ),
          Text(
            'Monkey Sponsors receive:',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text('Monkey Photo & Certificate'),
          Text('Original Monkey Art'),
          Text('"Almost Wild" DVD'),
          SizedBox(
            height: 16,
          ),
          Text(
              'We ask that you commit for at least a year. Automatic monthly sponsorships continue until cancelled.'),
          SizedBox(
            height: 6,
          ),
          Text(
              "If you are giving the sponsorship as a gift, be sure to provide the recipient's name and contact information."),
        ],
      ),
    );
  }

  Widget sponsoredMView() {
    return Container(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sponseredMonkeys.length,
        itemBuilder: (ctx, i) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              width: 120,
              padding: const EdgeInsets.all(2.0),
              child: sponseredMonkeys[i],
            ),
            Text(
              sponseredMonkeyTitles[i],
            ),
          ],
        ),
      ),
    );
  }

  Widget formButton({
    String title,
    Function onPressed,
  }) {
    return InkWell(
      child: Container(
        height: 30,
        width: 140,
        child: Material(
          elevation: 10,
          color: Color(0xFF6A8F49),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
