import 'package:flutter/material.dart';
import 'package:tasktrek/pages/home.dart';

class forgot_Reset extends StatefulWidget {
  const forgot_Reset({super.key});



  @override
  State<forgot_Reset> createState() => _forgot_ResetPageState();
}

class _forgot_ResetPageState extends State<forgot_Reset> {
  bool _obscureText = true;
  bool emptyText = true;
  bool confirmEmptyText = true;
  bool passwordNotMatch = false;
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void passwordVisibilitySate(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C96B5),
      appBar: AppBar(
        backgroundColor:Color(0xFF6C96B5),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        SizedBox(width: 38,),
                        Text(
                          'New Password',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.asset(
                          'lib/assets/images/padlock.png',
                        ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      SizedBox(
                        height: 38.0,
                        width: 258,
                        child: TextFormField(
                          controller: _passwordController,
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'PenPineappleApplePen',
                            suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                            onPressed: passwordVisibilitySate,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                          obscureText: _obscureText,
                        ),
                      ),
                    ],
                    ),
                  SizedBox(
                    height: 30,
                    child: Center(
                      child: emptyText ? 
                      Text(
                        'Password cannot be empty.',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 0, 0), fontSize: 12,
                        )
                      ) : passwordNotMatch ? 
                      Text(
                        'Password do not matched. Please try again.',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 0, 0), fontSize: 12,
                        ) 
                      ) : null
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        SizedBox(width: 44,),
                        Text(
                          'Confirm New Password',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.asset(
                          'lib/assets/images/padlock.png',
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        height: 38.0,
                        width: 258,
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'PenPineappleApplePen',
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                              onPressed: passwordVisibilitySate,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                          obscureText: _obscureText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
                child: Center(
                  child: confirmEmptyText ? 
                  Text(
                    'Password cannot be empty.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 0, 0), fontSize: 12,
                    )
                  ) : passwordNotMatch ? 
                  Text(
                    'Password do not matched. Please try again.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 0, 0), fontSize: 12,
                    ) 
                  ) : null
                ),
              ),
              SizedBox(
                width: 286,
                height: 43,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      emptyText = _passwordController.text.isEmpty;
                      confirmEmptyText = _confirmPasswordController.text.isEmpty;
                      passwordNotMatch = _passwordController.text != _confirmPasswordController.text;
                    });
                    !passwordNotMatch ?
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage(),
                      ),
                    ):null;
                  },
                  style: ElevatedButton.styleFrom(
                          iconColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          backgroundColor:Colors.black,
                        ),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}