import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  Tab2State createState() => Tab2State();
}

class Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin<Tab2> {
  @override
  void initState() {
    super.initState();
    print('initState Tab2');
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Tab 2',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
    );
  }
}

