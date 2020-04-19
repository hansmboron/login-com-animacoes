import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = [
    'ESTUDAR',
    'TRABALHAR',
    'socializar',
    'brincar',
  ];
  int _category = 0;

  void selectFoward() {
    setState(() {
      _category++;
    });
  }

  void selectBack() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          disabledColor: Colors.transparent,
          color: Colors.white,
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: _category > 0 ? selectBack : null,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        IconButton(
          disabledColor: Colors.transparent,
          color: Colors.white,
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
          onPressed: _category < categories.length - 1 ? selectFoward : null,
        )
      ],
    );
  }
}
