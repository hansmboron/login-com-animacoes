import 'package:flutter/material.dart';
import 'package:login_animacoes/widgets/list-data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePos;

  const AnimatedListView({@required this.listSlidePos});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 6,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 5,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 4,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 3,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 2,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Estudar Flutter no YouTube',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Estudar Flutter no YouTube 2',
          image: AssetImage('img/perfil.jpg'),
          margin: listSlidePos.value * 0,
        ),
      ],
    );
  }
}
