import 'package:flutter/material.dart';

class aboout_gridview extends StatelessWidget {
  const aboout_gridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('about GridView')
        ),
      ),
      body: GridView.builder(
        itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index){
            return Container(
              alignment: Alignment.center,
              color: Colors.orange[100* (index % 10)],
              child: ListView(

              ),
            );
          },
      ),
    );
  }
}
