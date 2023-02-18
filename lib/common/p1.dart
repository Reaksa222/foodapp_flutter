import 'package:flutter/material.dart';

class pro1 extends StatelessWidget {
  const pro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
       //   backgroundColor: Colors.white,
          title: Center(
              child: Text('Hello Flutter')
          ),
          actions: <Widget> [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(""),
                ),
                  accountName: Text('Thy Nannsy'),
                  accountEmail: Text('Thynansy12@gmail.com')

              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.add_box),
                title: Text('Add Account'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                trailing: Icon(Icons.arrow_forward),
              ),
              Divider(),
            ],
          ),
        ),
        body: Container(
       //   color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
                'Body',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 40,
                color: Colors.red,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
       //   backgroundColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: 'message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call,color: Colors.green),
              label: 'call',
            ),

          ],
        ),
      ),
    );
  }
}
