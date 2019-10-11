import 'package:flutter/material.dart';
import 'package:startup_namer/pages/Categorias/subCategorias/First.dart';
import 'package:startup_namer/pages/Categorias/subCategorias/Second.dart';


void main() {
  runApp(MaterialApp(
    // Title
      title: "Categorias",
      // Home
      home: Categorias()));
}

class Categorias extends StatefulWidget {
  @override
  CategoriasState createState() => CategoriasState();
}

// SingleTickerProviderStateMixin is used for animation
class CategoriasState extends State<Categorias> with SingleTickerProviderStateMixin {
  /*
   *-------------------- Setup Tabs ------------------*
   */
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          // set icon to the tab
          icon: Icon(Icons.wb_auto),
        ),
        Tab(
          icon: Icon(Icons.wc),
        ),
        Tab(
          icon: Icon(Icons.airplanemode_active),
        )
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  /*
   *-------------------- Setup the page by setting up tabs in the body ------------------*
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
        appBar: AppBar(
          // Title
            title: Text("Categorias"),
            // Set the background color of the App Bar
            backgroundColor: Colors.indigo[900],
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[First(), Second(), First()]));
  }
}