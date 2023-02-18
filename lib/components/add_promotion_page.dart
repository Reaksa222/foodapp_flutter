import 'package:flutter/material.dart';

class AddPromotionPage extends StatelessWidget {
  const AddPromotionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: const Icon(Icons.local_mall_outlined),
                radius: 30,
              ),
              title: const Text('Extra Discount 15% Off'),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Promotion Code: 123456',
                  style: TextStyle(color: Colors.grey.withOpacity(1)),
                ),
              ),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
            ),
            shadowColor: Colors.white.withOpacity(0.3),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: const Icon(Icons.local_mall_outlined),
                radius: 30,
              ),
              title: const Text('Extra Discount 15% Off'),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Promotion Code: 123456',
                  style: TextStyle(color: Colors.grey.withOpacity(1)),
                ),
              ),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
