import 'package:flutter/material.dart';
import 'package:loja_online/tabs/home_tab.dart';
import 'package:loja_online/tabs/products_tab.dart';
import 'package:loja_online/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageControler,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageControler),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageControler),
          body: ProductsTab(),
        ),


        Container(color: Colors.yellow),
        Container(color: Colors.green),
      ],
    );
  }
}
