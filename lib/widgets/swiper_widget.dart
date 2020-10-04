import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import '../providers/monkey_provider.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Consumer<JFMonkeys>(
            builder: (ctx, monkeys, chld) => monkeys.monkeyList.length <= 0
                ? CircularProgressIndicator()
                : Swiper(
                    autoplay: true,
                    curve: Curves.slowMiddle,
                    itemWidth: MediaQuery.of(context).size.width,
                    duration: 20,
                    containerWidth: MediaQuery.of(context).size.width,
                    itemCount: monkeys.monkeyList.length,
                    itemBuilder: (ctx, i) => Stack(
                      alignment: Alignment.center,
                      children: [
                        monkeys.monkeyList[i].localImage,
                        Padding(
                          padding: const EdgeInsets.only(left: 280.0),
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
    );
  }
}
