import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // The page should have a Scaffold as the root widget.
    return Scaffold(
      // Inside the Scaffold, create an AppBar with the title "My Shopping List".
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "My Shopping List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
        actions: [
          // Use the IconButton widget to add an icon button on the AppBar.
          IconButton(
            onPressed: () {
              // When pressed, it should display a Snackbar with the message "Cart is empty".
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Center(
                    child: Text(
                      "Cart is empty",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  backgroundColor: Colors.red.shade300,
                ),
              );
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      // create a ListView widget to display the list of shopping items.
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Each item in the list should be represented by a ListTile widget. The list should have at least 5 shopping items.
            ListTile(
              // Each ListTile should display an icon on the left, followed by the name of the shopping item.
              leading: Icon(Icons.shopping_basket, color: Colors.green,),
              title: Text("Apple", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              tileColor: Colors.grey.shade200,
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.green,),
              title: Text("Banana", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              tileColor: Colors.grey.shade200,
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.green,),
              title: Text("Bread", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              tileColor: Colors.grey.shade200,
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.green,),
              title: Text("Milk", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              tileColor: Colors.grey.shade200,
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.green,),
              title: Text("Egg", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              tileColor: Colors.grey.shade200,
              trailing: Icon(Icons.delete_forever, color: Colors.red,),
            ),
          ],
        ),
      ),
    );
  }
}
