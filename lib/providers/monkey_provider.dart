import 'package:flutter/material.dart';

import 'monkey.dart';

class JFMonkeys with ChangeNotifier {
  List<Monkey> _monkeyList = [
    Monkey(
      id: null,
      title: 'Arie',
      description: 'Arie the monkey',
      location: null,
      localImage: Image.asset('images/Arie.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Buddie',
      description: 'Buddie the monkey',
      location: null,
      localImage: Image.asset('images/Buddie.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Cosmo',
      description: 'Cosmo the monkey',
      location: null,
      localImage: Image.asset('images/Cosmo.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Earl',
      description: 'Earl the monkey',
      location: null,
      localImage: Image.asset('images/Earl.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Ernie',
      description: 'Ernie the monkey',
      location: null,
      localImage: Image.asset('images/Ernie.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Fat Larry',
      description: 'Fat Larry the monkey',
      location: null,
      localImage: Image.asset('images/FatLarry.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Jak Jak',
      description: 'Jak Jak the monkey',
      location: null,
      localImage: Image.asset('images/JakJak.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Kelli',
      description: 'Kelli the monkey',
      location: null,
      localImage: Image.asset('images/Kelli.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Max',
      description: 'Max the monkey',
      location: null,
      localImage: Image.asset('images/Max.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Mikki',
      description: 'Mikki the monkey',
      location: null,
      localImage: Image.asset('images/Mikki.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Picasso',
      description: 'Picasso the monkey',
      location: null,
      localImage: Image.asset('images/Picasso.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Samantha',
      description: 'Samantha the monkey',
      location: null,
      localImage: Image.asset('images/Samantha.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Udi',
      description: 'Udi the spider monkey',
      location: null,
      localImage: Image.asset('images/Udi.jpg'),
    ),
    Monkey(
      id: null,
      title: 'Chopin',
      description: 'Chopin the squerrel monkey',
      location: null,
      localImage: Image.asset('images/Chopin.jpg'),
    ),
  ];

  List<Monkey> get monkeyList {
    return [..._monkeyList];
  }

  List<MonkeyType> _monkeyType = [
    MonkeyType(
      type: 'Capuchins',
      typeImage: Image.asset('images/capuchin.jpg'),
    ),
    MonkeyType(
      type: 'Marmosets',
      typeImage: Image.asset('images/marmoset.jpg'),
    ),
    MonkeyType(
      type: 'Spider Monkeys',
      typeImage: Image.asset('images/spider.jpg'),
    ),
    MonkeyType(
      type: 'Squirrel Monkeys',
      typeImage: Image.asset('images/squirrel.jpg'),
    ),
    MonkeyType(
      type: 'Tamarins',
      typeImage: Image.asset('images/tamarin.jpg'),
    ),
    MonkeyType(
      type: 'In Memorendum',
      typeImage: null,
    ),
  ];
  List<MonkeyType> get monkeyType {
    return [..._monkeyType];
  }
}
