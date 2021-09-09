import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/components/flutter_coded_text.dart';
import 'package:portifolio/responsive.dart';

import '../../../../constants.dart';

class TextoAnimado extends StatelessWidget {
  const TextoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("Eu fiz um"),
          Responsive.isMobile(context)
              ? Expanded(
                  child: Animado(),
                )
              : Animado(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class Animado extends StatelessWidget {
  const Animado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Responsive web and mobile app",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Complete e-Commerce app UI",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Chat app with dart and light theme",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
