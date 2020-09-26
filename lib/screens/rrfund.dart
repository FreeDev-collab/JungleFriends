import 'package:flutter/material.dart';

class RRFund extends StatelessWidget {
  static const routeName = 'rrfund';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Research Retirement Fund'.toUpperCase(),
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Text(
            'From the Laboratory to a New Life...'.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Over the years, Jungle Friends has been asked to take in hundreds '
            'of monkeys from research laboratories. Many of these monkeys were '
            'born in the wild, captured for research, and lived for decades in '
            'small cages. Others were born in captivity and have never been outside.'
            ' They have sacrificed for research that benefits humans, and we believe in giving them a '
            'life as close to natural as possible for the remainder of their days. Every day,'
            ' more and more of the laboratories using monkeys in research are proving that they agree with us.'
            ' So many, in fact, that we have recently doubled in size to accommodate a large group of cotton-top '
            'tamarins retiring from research at a major university that is helping fund their '
            'retirement. We are extremely happy with this trend of retiring the monkeys from research,'
            ' but not all of the labs provide funding and there is never enough for unforeseen circumstances. We need your help!',
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Please help us offer a safe haven to these monkeys who have had so little.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Donate to our Research Retirement Fund today.',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              child: Material(
                color: Color(0xFF6A8F49),
                child: Container(
                  height: 40,
                  child: Center(
                    child: Text(
                      'Research Retirement Fund',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onTap: () {},
              splashColor: Colors.white,
            ),
          ),
          Text(
            'Previous Research Retirement Stories'.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "Capuchins:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(". Nine capuchins retire from lab: a picture story (PDF)"),
          Text(". Pip and Zeke's Arrival - May 2012"),
          Text(". The Wooster Monkeys Are Here!"),
          Text(". Building Habitats for Don King and Sloth!"),
          Text(". Don King and Sloth are released from the lab!"),
          Text(". UGA Habitats!"),
          Text(". The University of Georgia Monkeys Arrive!"),
          Text(". The UGA Vasectomies"),
          Text(". The UGA Boys!"),
          Text(". Last Nine Ironmen Arrival."),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "Marmosets:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
              ". Marmoset Village - A haven for marmosets released from research"),
          Text(". Video: Marmoset Village"),
          Text(". Photo Gallery: The Making of Marmoset Village"),
          Text(". Three new marmosets at Jungle Friends"),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "Tamarins:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(". From research lab to Tamarin Town !"),
          Text(". Video: Tamarin Town"),
          Text(". In memoriam: Ashley and Odin"),
          Text(". Cottontop Arrival!"),
          Text(". 11 more Cotton Top Tamarins now call Jungle Friends home!"),
          Text(". New Cotton Top Building (AKA CottonTopolis)"),
          Text(". CottonTopolis Arrivals"),
          Text(". 4 more Cotton-Top Tamarins Retired from Research! "),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "Squirrel monkeys:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(". The Hundredth Monkey has arrived!"),
          Text(". Video: Bungle in the Jungle"),
          Text(". Emerald City"),
          Text(". 57 Squirrel Monkey have arrived!"),
          Text(". 3 Squirrel Monkeys Retired from Malaria Research! "),
          Text(". The FDA Retires 26 Squirrel Monkeys from Nicotine Studies"),
        ],
      ),
    );
  }
}
