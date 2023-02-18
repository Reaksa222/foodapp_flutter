import 'package:flutter/material.dart';

class about_ListTile extends StatefulWidget {
  const about_ListTile({Key? key}) : super(key: key);

  @override
  State<about_ListTile> createState() => _about_ListTileState();
}

class _about_ListTileState extends State<about_ListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About ListTile'),
      ),
      body: ListView.separated(
        itemCount: product.getprice().length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(product.getprice()[index].name),
            subtitle: Text(
              product.getprice()[index].description ?? 'No data'
            ),
            trailing: Text(
              "\$${product.getprice()[index].price}",
                  style: TextStyle( color: Colors.red),
            ),
          leading: CircleAvatar(
          backgroundImage: NetworkImage(product.getprice()[index].imagePath),
          ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.black,
            height: 1,
          );
      },
      ),
    );
  }
}

class product{
  final String name;
  final String? description;
  final double price;
  final String imagePath;

  product({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
});

  static List<product> getprice(){
    return[
      product(
          name: 'Apple' ,
          description: 'Apple is a kind of sweet fruit',
          price: 2.00,
          imagePath: 'images/apple.png',
      ),
      product(
        name: 'Banana' ,
        description: 'Banana is a friut',
        price: 2.00,
        imagePath: 'images/apple.png',
      ),
      product(
        name: 'Mango' ,
        description: 'Mango is a friut',
        price: 2.00,
        imagePath: 'images/apple.png',
      ),
      product(
        name: 'Orange' ,
        description: null,
        price: 2.00,
        imagePath: 'images/apple.png',
      ),
    ];
  }
}
