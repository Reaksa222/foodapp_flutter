import 'package:flutter/material.dart';

class testing extends StatelessWidget {
  const testing({Key? key}) : super(key: key);
  //final image = 'https://www.spectator.co.uk/wp-content/uploads/2022/11/Rod-iStock-1.jpg?w=1000';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Reaksa Thieng '),
                accountEmail: Text('reaksa1122@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png'
                    ),
                  ),
                  CircleAvatar(
                    child: Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                  )
                ],

              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                trailing: Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
        appBar: AppBar(
          //  backgroundColor: Colors.white,
          title: const Text(
            'Image',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(25),
            child: Text(
              'HomePage',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1594064452038557698/lh2AEsiJ_400x400.jpg',
                    ), fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('Leo Messi',style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 20,
              ),
              SnackBAR(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music',
            )
          ],
        ),
      ),
    );
  }
}

class SnackBAR extends StatelessWidget {
  const SnackBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Argentina'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Random who is winner ?'),
      ),
    );
  }
}
