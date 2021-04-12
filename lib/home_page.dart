import 'package:flutter/cupertino.dart';
import 'package:myapp/left_layout.dart';
import 'package:myapp/right_layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(218, 217, 208, 1),
      child: Row(
        children: [
          LeftLayout(),
          Expanded(child:RightLayout())
        ],
      ),

    );
  }
}
