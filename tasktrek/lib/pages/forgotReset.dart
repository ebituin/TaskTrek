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
      backgroundColor:  const Color.fromARGB(255, 1, 143, 129),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255,1,143,129),
        actions: [
        

        ],

      ),
      body: Center(
        child: 
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 60),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          Text(
                            'New Password',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child:  SizedBox(
                        height: 30.0,
                        width: 300.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Natataenako@email.com',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          Text(
                            'Confirm New Password',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child:  SizedBox(
                        height: 30.0,
                        width: 300.0,
                        child: TextFormField(
                          style: TextStyle(fontSize: 10.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Natataenako@email.com',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 4),
                SizedBox(height: 30),
                SizedBox(
                  child:
                    
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 70),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyHomePage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                    iconColor: Colors.black,
                                    minimumSize: Size(double.infinity, 20),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    backgroundColor: Colors.black,
                                  ),
                            child: Text('Reset Password'),)
                        ],
                      ),
                    ),
                    
                )
              ],
            ),
          ),
      ),
    );
  }
}
