import 'package:flutter/material.dart';
import 'package:tasktrek/pages/forgotOTP.dart';
import 'package:tasktrek/pages/home.dart';

class forgot_Reset extends StatefulWidget {
  const forgot_Reset({super.key});



  @override
  State<forgot_Reset> createState() => _forgot_ResetPageState();
}

class _forgot_ResetPageState extends State<forgot_Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C96B5),
      appBar: AppBar(
        backgroundColor:Color(0xFF6C96B5),
      ),
      body: Center(
        child: 
          Padding(
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
                            style: TextStyle(fontSize: 14.0),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Natataenako@email.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 12.0,
                              ),
                              
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
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
                        SizedBox(width: 5,),
                        SizedBox(
                        height: 38.0,
                        width: 258,
                        child: TextFormField(
                          style: TextStyle(fontSize: 14.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Natataenako@email.com',
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      ],
                      ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 286,
                  height: 43,
                  child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage(),
                            ),
                          );
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
