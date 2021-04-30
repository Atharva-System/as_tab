import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  @override
  Tab4State createState() => Tab4State();
}

class Tab4State extends State<Tab4> with AutomaticKeepAliveClientMixin<Tab4> {
  @override
  void initState() {
    super.initState();
    print('initState Tab4');
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Tab 4',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
    );
  }
}
