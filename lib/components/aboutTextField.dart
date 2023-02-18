import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutTextfield extends StatefulWidget {
  aboutTextfield({Key? key}) : super(key: key);

  @override
  State<aboutTextfield> createState() => _aboutTextfieldState();
}

class _aboutTextfieldState extends State<aboutTextfield> {

  late final TextEditingController _usernamecontroller;
  late final TextEditingController _passwordcontroller;
  late final FocusNode _usernameFocusNode;
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _usernamecontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _usernamecontroller.dispose();
    _passwordcontroller.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  // close keyboard
  void _closekeyboard() {
    _usernameFocusNode.unfocus();
    _passwordFocusNode.unfocus();
  }

  // close keyboard
  void _closekeybord2() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Theme.of(context).accentColor,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           CircleAvatar(
             backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRODZob7ROpqlx8WXwjueNwTOlC6Qum-yMiyfXiFRXkdhkHgybCpdvM1UpaXCL1ycfO8NI&usqp=CAU'),
           ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 30),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'facebook',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                margin: EdgeInsets.symmetric(vertical: 120, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                //  color: Theme.of(context).primaryColor,
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.3),
                      offset: Offset(0, 12),
                      blurRadius: 21
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    _closekeybord2();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: const Center(
                          child: Text(
                            'Log in to facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      TextField(
                        controller: _usernamecontroller,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        focusNode: _usernameFocusNode,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          labelText: 'gmail',
                          hintText: 'Enter Gmail',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          // prefixIcon: Icon(Icons.lock),
                          // suffixIcon: Icon(Icons.remove_red_eye),
                          // filled: true,
                          // fillColor: Colors.indigo[50],
                          // counterText: '0/20',
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: _passwordcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        focusNode: _passwordFocusNode,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          labelText: 'password',
                          hintText: 'Enter password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          // prefixIcon: Icon(Icons.lock),
                          // suffixIcon: Icon(Icons.remove_red_eye),
                          // filled: true,
                          // fillColor: Colors.indigo[50],
                          // counterText: '0/10',
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ClipRRect(
                          //  borderRadius: BorderRadius.circular(6),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('UserName : ${_usernamecontroller.text}'),
                      Text('Password : ${_passwordcontroller.text}')
                    ],
                  ),
                ),
              ),
            ],
          ),
         ],
       ),
      ),
    );
  }
}
