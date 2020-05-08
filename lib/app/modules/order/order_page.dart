import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';
import 'package:projeto_fanap/app/shared/components/order_canceled_card_widget.dart';
import 'package:projeto_fanap/app/shared/components/order_done_card_widget.dart';
import 'package:projeto_fanap/app/shared/components/order_open_card_widget.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _orderController = Modular.get<OrderController>();
    return Scaffold(
      appBar: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 2,
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Theme.of(context).backgroundColor,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).accentColor,
              width: 4.0,
            ),
          ),
        ),
        tabs: [
          Tab(
            icon: Icon(Icons.add_shopping_cart),
            text: "Abertos",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Fechados",
          ),
          Tab(
            icon: Icon(Icons.remove_shopping_cart),
            text: "Cancelados",
          ),
        ],
        controller: _tabController,
      ),
      body: TabBarView(
        children: <Widget>[
          //Order Abertas
          Center(
            child: Observer(
              builder: (_) {
                if (_orderController.ordersOpen.error != null) {
                  return Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.replay,
                        size: 40,
                      ),
                      onPressed: () {
                        _orderController.fetchOrderOpen();
                      },
                    ),
                  );
                }
                if (_orderController.ordersOpen.value == null) {
                  return Center(child: CircularProgressIndicator());
                }
                var list = _orderController.ordersOpen.value;
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: OrderOpenCard(
                        item: list[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          //Order Fechadas
          Center(
            child: Observer(
              builder: (_) {
                if (_orderController.ordersDone.error != null) {
                  return Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.replay,
                        size: 40,
                      ),
                      onPressed: () {
                        _orderController.fetchOrderDone();
                      },
                    ),
                  );
                }
                if (_orderController.ordersDone.value == null) {
                  return Center(child: CircularProgressIndicator());
                }
                var list = _orderController.ordersDone.value;
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: OrderDoneCard(
                        item: list[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          //Order Canceladas
          Center(
            child: Observer(
              builder: (_) {
                if (_orderController.ordersCanceled.error != null) {
                  return Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.replay,
                        size: 40,
                      ),
                      onPressed: () {
                        _orderController.fetchOrderCanceled();
                      },
                    ),
                  );
                }
                if (_orderController.ordersCanceled.value == null) {
                  return Center(child: CircularProgressIndicator());
                }
                var list = _orderController.ordersCanceled.value;
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: OrderCanceledCard(
                        item: list[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
        controller: _tabController,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
