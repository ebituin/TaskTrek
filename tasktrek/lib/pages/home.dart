import 'package:flutter/material.dart';
import 'package:tasktrek/pages/forgotpage.dart';
import 'package:tasktrek/pages/signUp.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
      bool lostConnection   = false;
    return Scaffold(
      backgroundColor: const Color(0xFF6C96B5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'WELCOME !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.0,
                letterSpacing: 1.5,
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.83,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: const Color(0xFF648CA9),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white54)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[LoginForm()],
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child:Padding(
              padding: EdgeInsets.all(45),
              child: Visibility(
                visible: lostConnection,
                child:Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: Color(0xFFAD292B),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      //image nung wifi
                      Text('image'),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lost Connection!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'You are not connected to a network.',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 2.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Signup(
                              title: 'Signup Page',
                            )),
                  );
                },
                child: Text(
                  'Create a new account.',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: const Color.fromARGB(255, 42, 26, 147),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool emptyText = false;
  bool wrongPassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 35.0,
                  child: TextFormField(
                    controller: _emailController,
                    style: const TextStyle(fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: 'Natataenako@email.com',
                      hintStyle: const TextStyle(color: Colors.black38),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 12.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 35.0,
                  child: TextFormField(
                    controller: _passwordController,
                    style: TextStyle(fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 12.0,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  child: Center(
                      child: emptyText
                          ? Text(
                              'The password cannot be empty.',
                              style: TextStyle(
                                  color: const Color(0xFFAD292B), fontSize: 12),
                            )
                          : wrongPassword
                              ? Text(
                                  'The password you’ve entered is incorrect.',
                                  style: TextStyle(
                                      color: const Color(0xFFAD292B),
                                      fontSize: 12),
                                )
                              : null),
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        emptyText = _passwordController.text.isEmpty;
                        wrongPassword = _passwordController.text != 'fetish';
                      });
                      //Navigator.push(
                      //context,
                      //MaterialPageRoute(builder: ),
                      //);
                    },
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: const Color.fromARGB(255, 44, 44, 44),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forgot_page()));
                  },
                  child: Baseline(
                    baseline: 20.0,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline), // Black text
                    ),
                  ),
                ),
              ])),
    );
  }
}
