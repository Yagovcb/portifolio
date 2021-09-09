import 'package:flutter/material.dart';

import '../../../../constants.dart';

class MinhasInfos extends StatelessWidget {
  const MinhasInfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
            Spacer(),
            Text(
              "Yago Castelo Branco",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Desenvolvedor Flutter e Java \n Cofundador do BCB Digital",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
