import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  Tab1State createState() => Tab1State();
}

class Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin<Tab1> {
  @override
  void initState() {
    super.initState();
    print('initState Tab1');
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Tab 1',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
    );
  }
}
