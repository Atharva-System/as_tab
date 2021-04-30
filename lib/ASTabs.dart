import 'package:flutter/material.dart';

class TabItem {
  String title;
  bool isSystemIcon;
  IconData tabIcon;
  String imgUnselPath;
  String imgSelPath;

  TabItem(this.title, this.isSystemIcon,
      {this.tabIcon, this.imgUnselPath, this.imgSelPath});
}

class ASTabs extends StatefulWidget {
  //THIS STORES ALL THE TABS
  final List<Widget> tabPages;

  //CONTAINS TAB ITEMS
  final List<TabItem> tabItems;

  //THIS STORES BY DEFAULT SELECTED TAB INDEX
  int tabIndex = 0;

  Colors tabSelColor;
  Colors tabUnSelColor;
  Colors tabBgColor ;

  String fontFamily;
  FontWeight fontWeight ;
  FontStyle fontStyle;

  ASTabs(this.tabPages, this.tabItems, {this.tabIndex, this.tabBgColor, this.tabSelColor, this.tabUnSelColor, this.fontFamily, this.fontStyle, this.fontWeight});

  @override
  _ASTabsState createState() => _ASTabsState();
}

class _ASTabsState extends State<ASTabs> {
  @override
  void initState() {
    super.initState();
  }

  //GET TAB ITEMS
  List<BottomNavigationBarItem> setupTabItems() {
    List<BottomNavigationBarItem> tabItesms = [];
    for (var i = 0; i < widget.tabItems.length; i++) {
      var d = widget.tabItems[i];
      var isIcon = d.isSystemIcon;
      var m = BottomNavigationBarItem(
        icon: isIcon ? new Icon(d.tabIcon) : Image.asset(d.imgSelPath),
        title: new Text(d.title),
        activeIcon:
            isIcon ? new Icon(d.tabIcon) : Image.asset(d.imgUnselPath),
      );
      tabItesms.add(m);
    }
    return tabItesms;
  }

  setFont(Color tabColor, String fontFamily, FontWeight weight, FontStyle style) {
    return TextStyle(
        fontFamily: fontFamily,
        color: tabColor,
        fontWeight: weight,
        fontStyle: style,
        fontSize: 10);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: IndexedStack(index: widget.tabIndex, children: widget.tabPages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.tabIndex ?? 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: setFont(widget.tabSelColor ?? Colors.blue, widget.fontFamily ?? "Roboto", widget.fontWeight ?? FontWeight.normal, widget.fontStyle ?? FontStyle.normal),
        unselectedLabelStyle: setFont(widget.tabUnSelColor ?? Colors.black, widget.fontFamily ?? "Roboto", widget.fontWeight ?? FontWeight.normal, widget.fontStyle ?? FontStyle.normal),
        onTap: (int index) {
          setState(() {
            widget.tabIndex = index;
          });
        },
        items: setupTabItems(),
        backgroundColor: widget.tabBgColor ?? Colors.white,
      ),
    ));
  }
}
