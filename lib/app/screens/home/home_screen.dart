import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/components/heigh_lights_info.dart';
import 'package:portifolio/app/screens/home/components/home_banner.dart';
import 'package:portifolio/app/screens/home/components/meus_projetos.dart';
import 'package:portifolio/app/screens/main/pagina_principal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaginaPrincipal(
      children: [
        HomeBanner(),
        HeighLightsInfo(),
        MeusProjetos(),
      ],
    );
  }
}
