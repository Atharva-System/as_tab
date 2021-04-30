import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  @override
  Tab3State createState() => Tab3State();
}

class Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin<Tab3> {
  @override
  void initState() {
    super.initState();
    print('initState Tab3');
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Tab 3',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
    );
  }
}