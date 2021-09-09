import 'package:flutter/material.dart';
import 'package:portifolio/app/models/Project.dart';
import 'package:portifolio/app/screens/home/components/project_card.dart';
import 'package:portifolio/responsive.dart';

import '../../../../constants.dart';

class MeusProjetos extends StatelessWidget {
  const MeusProjetos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Meus Projetos",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: MeusProjetosGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: MeusProjetosGridView(crossAxisCount: 2),
          tablet: MeusProjetosGridView(childAspectRatio: 1.1),
          desktop: MeusProjetosGridView(),
        ),
      ],
    );
  }
}

class MeusProjetosGridView extends StatelessWidget {
  const MeusProjetosGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
