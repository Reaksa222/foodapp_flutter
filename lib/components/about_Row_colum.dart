import 'package:flutter/material.dart';

class aboutRowColum extends StatelessWidget {
  const aboutRowColum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://play-lh.googleusercontent.com/BMryS7Cn454jIAVrchF9as-7WOG07H97Lugr62ISdJSo7wj1cC-0MTUm3SqSZffc7IQ',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                      'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?"
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
