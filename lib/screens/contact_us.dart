import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  static const routeName = '/contactus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'.toUpperCase()),
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Questions? These links may provide the answers.',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            child: Text(
              'Visit The Sanctuary',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Text(
              'Tour the Sanctuary',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Text(
              'Volunteer',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Text(
              'How to Donate',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Text(
              'You want a Monkey?',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Text(
              'How to Start a Sanctuary',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Or, use the form below to contact Jungle Friends directly.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ContactFormWidget()
        ],
      ),
    );
  }
}

class ContactFormWidget extends StatelessWidget {
  const ContactFormWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name:'),
          Container(
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text('Email:'),
          Container(
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text('Subject:'),
          Container(
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text('Message:'),
          Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Please answer the math question so we know you're human. Thank you for helping us control spam.",
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            children: [
              Text(
                '10 minus 7?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(2.0),
              color: Color(0xFFE5E5E5),
            ),
            child: Center(
              child: Text(
                'Send Contact Inquiry',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          ListTile(
            title: Text(
              'Phone',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('(386) 462-7779'),
          ),
          ListTile(
            title: Text(
              'Address',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jungle Friends Primate Sanctuary'),
                Text('13915 North State Road 121'),
                Text('Gainesville, FL 32653'),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Kari Bagnal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Founder and Executive Director'),
          )
        ],
      ),
    );
  }
}
