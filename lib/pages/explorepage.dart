import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:junglefriends/utils/constants.dart';

import '../widgets/meet_the_monkeys_tab_widget.dart';
import '../widgets/videos_tab_widget.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Jungle Friends Primate Sanctuary',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          bottom: TabBar(
            isScrollable: false,
            physics: NeverScrollableScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Theme.of(context).primaryColorDark,
            ),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          child: Image(
                            image: tileImages[0].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Meet the Monkeys',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        child: Icon(
                          Entypo.video,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Monkey Videos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            MeetTheMonkeysTabWidget(),
            VideosTabWidget(),
          ],
        ),
      ),
    );
  }
}
