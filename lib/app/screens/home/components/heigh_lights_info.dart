import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/components/animated_counter.dart';
import 'package:portifolio/app/screens/home/components/heigh_light.dart';
import 'package:portifolio/responsive.dart';

import '../../../../constants.dart';

class HeighLightsInfo extends StatelessWidget {
  const HeighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 119,
                          text: "K+",
                        ),
                        label: "Inscritos",
                      ),
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 40,
                          text: "+",
                        ),
                        label: "Videos",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 30,
                          text: "+",
                        ),
                        label: "Github Projects",
                      ),
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 13,
                          text: "K+",
                        ),
                        label: "Stars",
                      ),
                    ],
                  ),
                )
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(right: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 119,
                      text: "K+",
                    ),
                    label: "Inscritos",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 40,
                      text: "+",
                    ),
                    label: "Videos",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 30,
                      text: "+",
                    ),
                    label: "Github Projects",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 13,
                      text: "K+",
                    ),
                    label: "Stars",
                  ),
                ],
              ),
            ),
    );
  }
}
