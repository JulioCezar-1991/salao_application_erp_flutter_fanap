import 'package:flutter/material.dart';

class SchedulingPage extends StatefulWidget {
  @override
  _SchedulingPageState createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TabBar(
          indicatorColor: Colors.teal,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Theme.of(context).backgroundColor,
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).backgroundColor,
                width: 4.0,
              ),
            ),
          ),
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Abertos",
            ),
            Tab(
              icon: Icon(Icons.add_shopping_cart),
              text: "Fechados",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Cancelados",
            ),
          ],
          controller: _tabController,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                "Abertos",
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).primaryColor),
              ),
            ),
            Center(
              child: Text(
                "Fechados",
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).primaryColor),
              ),
            ),
            Center(
              child: Text(
                "Cancelados",
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).primaryColor),
              ),
            ),
          ],
          controller: _tabController,
        ));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
