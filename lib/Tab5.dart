import 'package:flutter/material.dart';

class Tab5 extends StatefulWidget {
  @override
  Tab5State createState() => Tab5State();
}

class Tab5State extends State<Tab5> with AutomaticKeepAliveClientMixin<Tab5> {
  @override
  void initState() {
    super.initState();
    print('initState Tab5');
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Tab 5',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
    );
  }
}
