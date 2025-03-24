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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 143, 129),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Text(
              'WELCOME !',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          SizedBox(height: 50.0), 
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: <Widget>[LoginForm()],
              ),
            ),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account?',
                style: TextStyle(
                  fontSize: 12.0, 
                ),
              ),
              SizedBox(width: 5.0), 
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup(title: 'Signup Page',)),
                    );
                },
                child: Text(
                  'Create a new account',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: const Color.fromARGB(255, 45, 33, 126), 
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0 ),
          SizedBox(
            height: 30.0,
            width: 300.0,
            child: TextFormField(
              controller: _emailController,
              style: TextStyle(fontSize: 10.0),
              decoration: InputDecoration(
                hintText: 'Natataenako@email.com',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 12.0,
                ),
            ),
          ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Password',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          SizedBox(
            height: 30.0,
            width: 300.0,
            child: TextFormField(
              controller: _passwordController,
              style: TextStyle(fontSize: 10.0),
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 12.0,
                ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            height: 30,
            
            child:
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(
                    //context,
                     //MaterialPageRoute(builder: ),
                     //);
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color.fromARGB(255, 44, 44, 44),
                  
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
          ),
          SizedBox(height: 2),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => forgot_page())
                );
            },
            child: Baseline(
              baseline: 20.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  ), // Black text
              ),
            ),
          ),
        ],
      ),
    );
  }
}



